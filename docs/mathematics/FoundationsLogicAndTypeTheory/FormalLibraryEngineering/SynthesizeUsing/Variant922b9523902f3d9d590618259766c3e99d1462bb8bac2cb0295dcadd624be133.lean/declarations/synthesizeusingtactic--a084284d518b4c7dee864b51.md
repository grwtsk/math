# synthesizeUsingTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8102b4fdb1dad208b065fba642eda32346bfe9f64fc9fb2e1a10f976a118539d",
  "kind": "def",
  "lexical_name": "synthesizeUsingTactic",
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
  "slug": "synthesizeusingtactic--a084284d518b4c7dee864b51",
  "source": {
    "blob": "bbc8204da8d4cde88a6abdd1b38458304a13b24e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant922b9523902f3d9d590618259766c3e99d1462bb8bac2cb0295dcadd624be133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a084284d518b4c7dee864b5196c3058fff5cb339587c73acf9dc61c24e97bcdb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant922b9523902f3d9d590618259766c3e99d1462bb8bac2cb0295dcadd624be133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8102b4fdb1dad208b065fba642eda32346bfe9f64fc9fb2e1a10f976a118539d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def synthesizeUsingTactic {u : Level} (type : Q(Sort u)) (tac : Syntax) :
    MetaM (List MVarId × Q($type)) := do
  synthesizeUsing type (do evalTactic tac)

/--
`synthesizeUsing' type tacticSyntax` synthesizes an element of type `type` by evaluating the
given tactic syntax.

Example:
```lean
let e ← synthesizeUsingTactic' ty (← `(tactic| norm_num))
```

The tactic must solve for all goals, in contrast to `synthesizeUsingTactic`.

If you need to insert expressions into a tactic proof, then you might use `synthesizeUsing'`
directly, since the `TacticM` monad has access to the `TermElabM` monad. For example, here
is a term elaborator that wraps the `simp at ...` tactic:
```
def simpTerm (e : Expr) : MetaM Expr := do
  let mvar ← Meta.mkFreshTypeMVar
  let e' ← synthesizeUsing' mvar
    (do evalTactic (← `(tactic| have h := $(← Term.exprToSyntax e); simp at h; exact h)))
  -- Note: `simp` does not always insert type hints, so to ensure that we get a term
  -- with the simplified type (as opposed to one that is merely defeq), we should add
  -- a type hint ourselves.
  Meta.mkExpectedTypeHint e' mvar

elab "simpTerm% " t:term : term => do simpTerm (← Term.elabTerm t none)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant922b9523902f3d9d590618259766c3e99d1462bb8bac2cb0295dcadd624be133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthesizeUsing/Variant922b9523902f3d9d590618259766c3e99d1462bb8bac2cb0295dcadd624be133.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc8204da8d4cde88a6abdd1b38458304a13b24e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
