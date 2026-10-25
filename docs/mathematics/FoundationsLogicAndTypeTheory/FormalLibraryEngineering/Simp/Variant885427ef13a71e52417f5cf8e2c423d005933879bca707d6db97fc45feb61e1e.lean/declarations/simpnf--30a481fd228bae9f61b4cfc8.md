# simpNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d5c16ca0352798e3a0d2f0400debb01c7e2f6bc8583dc4dfd16070613647ba7",
  "kind": "def",
  "lexical_name": "simpNF",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "simpnf--30a481fd228bae9f61b4cfc8",
  "source": {
    "blob": "11e59be52fb4cdb57d15dfdb5fdae6dd82842be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a481fd228bae9f61b4cfc8e5233b14622bdbd45d7b50596d43b276404753a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d5c16ca0352798e3a0d2f0400debb01c7e2f6bc8583dc4dfd16070613647ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[std_linter] def simpNF : Linter where
  noErrorsFound := "All left-hand sides of simp lemmas are in simp-normal form."
  errorsFound := "SOME SIMP LEMMAS ARE NOT IN SIMP-NORMAL FORM.
see note [simp-normal form] for tips how to debug this.
https://leanprover-community.github.io/mathlib_docs/notes.html#simp-normal%20form"
  test := fun declName => do
    unless ← isSimpTheorem declName do return none
    let ctx := { ← Simp.Context.mkDefault with config.decide := false }
    checkAllSimpTheoremInfos (← getConstInfo declName).type fun {lhs, rhs, isConditional, ..} => do
      let (⟨lhs', prf1, _⟩, prf1Lems) ←
        decorateError "simplify fails on left-hand side:" <| simp lhs ctx
      if prf1Lems.contains (.decl declName) then return none
      let (⟨rhs', _, _⟩, used_lemmas) ←
        decorateError "simplify fails on right-hand side:" <| simp rhs ctx (usedSimps := prf1Lems)
      let lhs'EqRhs' ← isSimpEq lhs' rhs' (whnfFirst := false)
      let lhsInNF ← isSimpEq lhs' lhs
      if lhs'EqRhs' then
        if prf1.isNone then return none -- TODO: FP rewriting foo.eq_2 using `simp only [foo]`
        return m!"simp can prove this:
  by {← formatLemmas used_lemmas}
One of the lemmas above could be a duplicate.
If that's not the case try reordering lemmas or adding @[priority].
"
      else if ¬ lhsInNF then
        return m!"Left-hand side simplifies from
  {lhs}
to
  {lhs'}
using
  {← formatLemmas prf1Lems}
Try to change the left-hand side to the simplified term!
"
      else if !isConditional && lhs == lhs' then
        return m!"Left-hand side does not simplify, when using the simp lemma on itself.
This usually means that it will never apply.
"
      else
        return none

library_note "simp-normal form" /--
This note gives you some tips to debug any errors that the simp-normal form linter raises.

The reason that a lemma was considered faulty is because its left-hand side is not in simp-normal
form.
These lemmas are hence never used by the simplifier.

This linter gives you a list of other simp lemmas: look at them!

Here are some tips depending on the error raised by the linter:

  1. 'the left-hand side reduces to XYZ':
     you should probably use XYZ as the left-hand side.

  2. 'simp can prove this':
     This typically means that lemma is a duplicate, or is shadowed by another lemma:

     2a. Always put more general lemmas after specific ones:
      ```
      @[simp] lemma zero_add_zero : 0 + 0 = 0 := rfl
      @[simp] lemma add_zero : x + 0 = x := rfl
      ```

      And not the other way around!  The simplifier always picks the last matching lemma.

     2b. You can also use `@[priority]` instead of moving simp-lemmas around in the file.

      Tip: the default priority is 1000.
      Use `@[priority 1100]` instead of moving a lemma down,
      and `@[priority 900]` instead of moving a lemma up.

     2c. Conditional simp lemmas are tried last. If they are shadowed
         just remove the `simp` attribute.

     2d. If two lemmas are duplicates, the linter will complain about the first one.
         Try to fix the second one instead!
         (You can find it among the other simp lemmas the linter prints out!)

  3. 'try_for tactic failed, timeout':
     This typically means that there is a loop of simp lemmas.
     Try to apply squeeze_simp to the right-hand side (removing this lemma from the simp set) to see
     what lemmas might be causing the loop.

     Another trick is to `set_option trace.simplify.rewrite true` and
     then apply `try_for 10000 { simp }` to the right-hand side.  You will
     see a periodic sequence of lemma applications in the trace message.
-/

/--
A linter for simp lemmas whose lhs has a variable as head symbol,
and which hence never fire.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11e59be52fb4cdb57d15dfdb5fdae6dd82842be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
