# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea7614ce9c61a403ed4eb126336e16356c09867ac0e4936edeac5eb2bf87d497",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ffb0d401cccff7ddabe60cca",
  "source": {
    "blob": "9a21947520209d1952d4e4cdb6de9a5ea55a06c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 260,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffb0d401cccff7ddabe60cca80cedcf4175f7612855c69face00669cd97dce70",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea7614ce9c61a403ed4eb126336e16356c09867ac0e4936edeac5eb2bf87d497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMul R ℝ] [SMul R ℝ≥0] [IsScalarTower R ℝ≥0 ℝ] [Preorder R] [Zero R]
    [IsOrderedModule R ℝ] : IsOrderedSMul R (Seminorm 𝕜 E) where
  smul_le_smul_left p q hpq c x := calc
    _ ≤ (c • (1 : ℝ≥0)) • p x := by simp
    _ ≤ _ := by grw [hpq x]; simp
  smul_le_smul_right a b hab p x := by
    grw [smul_apply, hab, smul_apply]

end SMul

end AddGroup

section Module

variable [SeminormedRing 𝕜₂] [SeminormedRing 𝕜₃]
variable {σ₁₂ : 𝕜 →+* 𝕜₂} [RingHomIsometric σ₁₂]
variable {σ₂₃ : 𝕜₂ →+* 𝕜₃} [RingHomIsometric σ₂₃]
variable {σ₁₃ : 𝕜 →+* 𝕜₃} [RingHomIsometric σ₁₃]
variable [AddCommGroup E] [AddCommGroup E₂] [AddCommGroup E₃]
variable [Module 𝕜 E] [Module 𝕜₂ E₂] [Module 𝕜₃ E₃]
variable [SMul R ℝ] [SMul R ℝ≥0] [IsScalarTower R ℝ≥0 ℝ]

/-- Composition of a seminorm with a linear map is a seminorm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant71801f55e21b6c8588b6ac24f8dc664e3b74d059f4e8c5ac0b74ba508892c33f.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a21947520209d1952d4e4cdb6de9a5ea55a06c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
