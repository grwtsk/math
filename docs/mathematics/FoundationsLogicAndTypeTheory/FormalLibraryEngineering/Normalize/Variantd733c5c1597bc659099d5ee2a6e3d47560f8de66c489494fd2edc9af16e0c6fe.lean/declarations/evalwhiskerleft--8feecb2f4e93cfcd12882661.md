# evalWhiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0910f9f39dfe2ade80aedfd5fe1862e9a626552a5f7e73eee43d5015dbcd66ae",
  "kind": "def",
  "lexical_name": "evalWhiskerLeft",
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
  "slug": "evalwhiskerleft--8feecb2f4e93cfcd12882661",
  "source": {
    "blob": "b52b20a32d477352e861f8204c88e09c038fb198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8feecb2f4e93cfcd12882661465a6c6c85f00abb4247325e86ce4b13197c079f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0910f9f39dfe2ade80aedfd5fe1862e9a626552a5f7e73eee43d5015dbcd66ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalWhiskerLeft : Mor₁ → NormalExpr → CoherenceM ρ Eval.Result
  | f, .nil _ α => do
    return ⟨← nilM (← whiskerLeftM f α), ← mkEvalWhiskerLeftNil f α⟩
  | .of f, .cons _ α η ηs => do
    let η' ← MonadWhiskerLeft.whiskerLeftM f η
    let ⟨θ, e_θ⟩ ← evalWhiskerLeft (.of f) ηs
    let η'' ← consM (← whiskerLeftM (.of f) α) η' θ
    return ⟨η'', ← mkEvalWhiskerLeftOfCons f α η ηs θ e_θ⟩
  | .comp _ f g, η => do
    let ⟨θ, e_θ⟩ ← evalWhiskerLeft g η
    let ⟨ι, e_ι⟩ ← evalWhiskerLeft f θ
    let h ← η.srcM
    let h' ← η.tgtM
    let ⟨ι', e_ι'⟩ ← evalComp ι (← NormalExpr.associatorInvM f g h')
    let ⟨ι'', e_ι''⟩ ← evalComp (← NormalExpr.associatorM f g h) ι'
    return ⟨ι'', ← mkEvalWhiskerLeftComp f g η θ ι ι' ι'' e_θ e_ι e_ι' e_ι''⟩
  | .id _ _, η => do
    let f ← η.srcM
    let g ← η.tgtM
    let ⟨η', e_η'⟩ ← evalComp η (← NormalExpr.leftUnitorInvM g)
    let ⟨η'', e_η''⟩ ← evalComp (← NormalExpr.leftUnitorM f) η'
    return ⟨η'', ← mkEvalWhiskerLeftId η η' η'' e_η' e_η''⟩

open MkEvalWhiskerRight MkEvalHorizontalComp

mutual

/-- Evaluate the expression `η ▷ f` into a normalized form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52b20a32d477352e861f8204c88e09c038fb198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
