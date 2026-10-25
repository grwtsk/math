# evalHorizontalComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d6d854bd3a9d5b24f9eff878e9454b6811a0bc954f8cffb2958bfb44feb6b0f",
  "kind": "def",
  "lexical_name": "evalHorizontalComp",
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
  "slug": "evalhorizontalcomp--e23d0d4ae88a653e4ac21124",
  "source": {
    "blob": "37eaf8843a2da9c5e1165c73d166ebc3db6d49d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e23d0d4ae88a653e4ac2112439e2579ebf1424a250fbb36dbb779696c2e2530f",
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

Occurrence: `declaration:5d6d854bd3a9d5b24f9eff878e9454b6811a0bc954f8cffb2958bfb44feb6b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalHorizontalComp : NormalExpr → NormalExpr → CoherenceM ρ Eval.Result
  | .nil _ α, .nil _ β => do
    return ⟨← nilM <| ← horizontalCompM α β, ← mkEvalHorizontalCompNilNil α β⟩
  | .nil _ α, .cons _ β η ηs => do
    let ⟨η₁, e_η₁⟩ ← evalWhiskerLeft (← α.tgtM) (← NormalExpr.ofM η)
    let ⟨ηs₁, e_ηs₁⟩ ← evalWhiskerLeft (← α.tgtM) ηs
    let ⟨η₂, e_η₂⟩ ← evalComp η₁ ηs₁
    let ⟨η₃, e_η₃⟩ ← evalCompNil (← horizontalCompM α β) η₂
    return ⟨η₃, ← mkEvalHorizontalCompNilCons α β η ηs η₁ ηs₁ η₂ η₃ e_η₁ e_ηs₁ e_η₂ e_η₃⟩
  | .cons _ α η ηs, .nil _ β => do
    let ⟨η₁, e_η₁⟩ ← evalWhiskerRight (← NormalExpr.ofM η) (← β.tgtM)
    let ⟨ηs₁, e_ηs₁⟩ ← evalWhiskerRight ηs (← β.tgtM)
    let ⟨η₂, e_η₂⟩ ← evalComp η₁ ηs₁
    let ⟨η₃, e_η₃⟩ ← evalCompNil (← horizontalCompM α β) η₂
    return ⟨η₃, ← mkEvalHorizontalCompConsNil α β η ηs η₁ ηs₁ η₂ η₃ e_η₁ e_ηs₁ e_η₂ e_η₃⟩
  | .cons _ α η ηs, .cons _ β θ θs => do
    let ⟨ηθ, e_ηθ⟩ ← evalHorizontalCompAux' η θ
    let ⟨ηθs, e_ηθs⟩ ← evalHorizontalComp ηs θs
    let ⟨ηθ₁, e_ηθ₁⟩ ← evalComp ηθ ηθs
    let ⟨ηθ₂, e_ηθ₂⟩ ← evalCompNil (← horizontalCompM α β) ηθ₁
    return ⟨ηθ₂,
      ← mkEvalHorizontalCompConsCons α β η θ ηs θs ηθ ηθs ηθ₁ ηθ₂ e_ηθ e_ηθs e_ηθ₁ e_ηθ₂⟩

end

open MkEval

variable {ρ : Type}
    [MonadMor₁ (CoherenceM ρ)]
    [MonadMor₂Iso (CoherenceM ρ)]
    [MonadNormalExpr (CoherenceM ρ)] [MkEval (CoherenceM ρ)]
    [MonadMor₂ (CoherenceM ρ)]

/-- Trace the proof of the normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantf0381b47db2facf1c7aab94a6b8fbc441287a5913cba5bc6df6083c553c57f34.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37eaf8843a2da9c5e1165c73d166ebc3db6d49d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
