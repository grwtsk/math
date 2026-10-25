# firstMultiplicativeArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e00b7f773d8b9ded74c192b05fe908ab3e7dc6395e03a647b5b94bba58e36e7",
  "kind": "def",
  "lexical_name": "firstMultiplicativeArg",
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
  "slug": "firstmultiplicativearg--01231f96c270435c4d9e37d4",
  "source": {
    "blob": "b2935c698dfe72503e695031eab3ae2f71a0671a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 931,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01231f96c270435c4d9e37d4fdc87c4360857f90458b4fc9e55e2df9065ca7ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e00b7f773d8b9ded74c192b05fe908ab3e7dc6395e03a647b5b94bba58e36e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstMultiplicativeArg (nm : Name) : MetaM Nat := do
  forallTelescopeReducing (← getConstInfo nm).type fun xs _ ↦ do
    -- xs are the arguments to the constant
    let xs := xs.toList
    let l ← xs.filterMapM fun x ↦ do
      -- x is an argument and i is the index
      -- write `x : (y₀ : α₀) → ... → (yₙ : αₙ) → tgt_fn tgt_args₀ ... tgt_argsₘ`
      forallTelescopeReducing (← inferType x) fun _ys tgt ↦ do
        let (_tgt_fn, tgt_args) := tgt.getAppFnArgs
        if let some c := tgt.getAppFn.constName? then
          if findTranslation? (← getEnv) c |>.isNone then
            return none
        return tgt_args[0]?.bind fun tgtArg ↦
          xs.findIdx? fun x ↦ Expr.containsFVar tgtArg x.fvarId!
    trace[to_additive_detail] "firstMultiplicativeArg: {l}"
    match l with
    | [] => return 0
    | (head :: tail) => return tail.foldr Nat.min head

/-- Helper for `capitalizeLike`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2935c698dfe72503e695031eab3ae2f71a0671a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
