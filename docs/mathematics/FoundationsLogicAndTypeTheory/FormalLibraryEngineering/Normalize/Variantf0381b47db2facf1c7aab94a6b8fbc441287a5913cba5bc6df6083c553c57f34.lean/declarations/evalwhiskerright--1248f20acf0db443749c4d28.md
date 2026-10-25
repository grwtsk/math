# evalWhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbbfe3de0d22271780968697e3c1976c09fa6259ee905dda9fa188393f1e1fdc",
  "kind": "def",
  "lexical_name": "evalWhiskerRight",
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
  "slug": "evalwhiskerright--1248f20acf0db443749c4d28",
  "source": {
    "blob": "37eaf8843a2da9c5e1165c73d166ebc3db6d49d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 419,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1248f20acf0db443749c4d28cb88b74681e197c38a657f1a5afaa8608f9ba50f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbbfe3de0d22271780968697e3c1976c09fa6259ee905dda9fa188393f1e1fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalWhiskerRight : NormalExpr → Mor₁ → CoherenceM ρ Eval.Result
  | .nil _ α, h => do
    return ⟨← nilM (← whiskerRightM α h), ← mkEvalWhiskerRightNil α h⟩
  | .cons _ α (.of η) ηs, .of f => do
    let ⟨ηs₁, e_ηs₁⟩ ← evalWhiskerRight ηs (.of f)
    let ⟨η₁, e_η₁⟩ ← evalWhiskerRightAux η f
    let ⟨η₂, e_η₂⟩ ← evalComp η₁ ηs₁
    let ⟨η₃, e_η₃⟩ ← evalCompNil (← whiskerRightM α (.of f)) η₂
    return ⟨η₃, ← mkEvalWhiskerRightConsOfOf f α η ηs ηs₁ η₁ η₂ η₃ e_ηs₁ e_η₁ e_η₂ e_η₃⟩
  | .cons _ α (.whisker _ f η) ηs, h => do
    let g ← η.srcM
    let g' ← η.tgtM
    let ⟨η₁, e_η₁⟩ ← evalWhiskerRight (← consM (← id₂M' g) η (← NormalExpr.idM g')) h
    let ⟨η₂, e_η₂⟩ ← evalWhiskerLeft (.of f) η₁
    let ⟨ηs₁, e_ηs₁⟩ ← evalWhiskerRight ηs h
    let α' ← whiskerRightM α h
    let ⟨ηs₂, e_ηs₂⟩ ← evalComp (← NormalExpr.associatorInvM (.of f) g' h) ηs₁
    let ⟨η₃, e_η₃⟩ ← evalComp η₂ ηs₂
    let ⟨η₄, e_η₄⟩ ← evalComp (← NormalExpr.associatorM (.of f) g h) η₃
    let ⟨η₅, e_η₅⟩ ← evalComp (← nilM α') η₄
    return ⟨η₅, ← mkEvalWhiskerRightConsWhisker f h α η ηs η₁ η₂ ηs₁ ηs₂ η₃ η₄ η₅
      e_η₁ e_η₂ e_ηs₁ e_ηs₂ e_η₃ e_η₄ e_η₅⟩
  | η, .comp _ g h => do
    let ⟨η₁, e_η₁⟩ ← evalWhiskerRight η g
    let ⟨η₂, e_η₂⟩ ← evalWhiskerRight η₁ h
    let f ← η.srcM
    let f' ← η.tgtM
    let ⟨η₃, e_η₃⟩ ← evalComp η₂ (← NormalExpr.associatorM f' g h)
    let ⟨η₄, e_η₄⟩ ← evalComp (← NormalExpr.associatorInvM f g h) η₃
    return ⟨η₄, ← mkEvalWhiskerRightComp g h η η₁ η₂ η₃ η₄ e_η₁ e_η₂ e_η₃ e_η₄⟩
  | η, .id _ _ => do
    let f ← η.srcM
    let g ← η.tgtM
    let ⟨η₁, e_η₁⟩ ← evalComp η (← NormalExpr.rightUnitorInvM g)
    let ⟨η₂, e_η₂⟩ ← evalComp (← NormalExpr.rightUnitorM f) η₁
    return ⟨η₂, ← mkEvalWhiskerRightId η η₁ η₂ e_η₁ e_η₂⟩

/-- Evaluate the expression `η ⊗ θ` into a normalized form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37eaf8843a2da9c5e1165c73d166ebc3db6d49d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
