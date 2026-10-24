# homothety_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4471e3e0-385c-2dd1-6ad4-0d08608c9f95",
  "kind": "theorem",
  "lexical_name": "homothety_norm",
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
  "slug": "homothety-norm--d473ad42fe6d2993155caae7",
  "source": {
    "blob": "b6554ac8fb793d39cda120d65d711f619846d213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 422,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d473ad42fe6d2993155caae78ab5c70cf4116ea9516bc85edfb13e03aff6408b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4471e3e0-385c-2dd1-6ad4-0d08608c9f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homothety_norm [NontrivialTopology E] (f : E →SL[σ₁₂] F) {a : ℝ}
    (hf : ∀ x, ‖f x‖ = a * ‖x‖) : ‖f‖ = a := by
  obtain ⟨x, hx⟩ := exists_norm_ne_zero E
  replace hx : 0 < ‖x‖ := lt_of_le_of_ne' (norm_nonneg _) hx
  have ha : 0 ≤ a := by simpa only [hf, hx, mul_nonneg_iff_of_pos_right] using norm_nonneg (f x)
  apply le_antisymm (f.opNorm_le_bound ha fun y => le_of_eq (hf y))
  simpa only [hf, hx, mul_le_mul_iff_left₀] using f.le_opNorm x

end OpNorm

section RestrictScalars

variable {𝕜' : Type*} [NontriviallyNormedField 𝕜'] [NormedAlgebra 𝕜' 𝕜]
variable [NormedSpace 𝕜' E] [IsScalarTower 𝕜' 𝕜 E]
variable [NormedSpace 𝕜' Fₗ] [IsScalarTower 𝕜' 𝕜 Fₗ]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6554ac8fb793d39cda120d65d711f619846d213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
