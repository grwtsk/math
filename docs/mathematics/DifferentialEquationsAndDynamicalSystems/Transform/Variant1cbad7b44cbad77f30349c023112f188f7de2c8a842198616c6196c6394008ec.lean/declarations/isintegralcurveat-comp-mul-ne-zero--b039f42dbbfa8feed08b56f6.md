# isIntegralCurveAt_comp_mul_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd0dfcf-a87b-6607-ba35-fb1185724e59",
  "kind": "lemma",
  "lexical_name": "isIntegralCurveAt_comp_mul_ne_zero",
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
  "slug": "isintegralcurveat-comp-mul-ne-zero--b039f42dbbfa8feed08b56f6",
  "source": {
    "blob": "662da43c6977048ed82506ab3bb9570b560569c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 147,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant1cbad7b44cbad77f30349c023112f188f7de2c8a842198616c6196c6394008ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b039f42dbbfa8feed08b56f60e0f6fa72aabefe87d9584ab9de8bb8912d398b4",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/Transform/Variant1cbad7b44cbad77f30349c023112f188f7de2c8a842198616c6196c6394008ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd0dfcf-a87b-6607-ba35-fb1185724e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegralCurveAt_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsIntegralCurveAt (γ ∘ (· * a)) (a • v ∘ (· * a)) (t₀ / a) ↔ IsIntegralCurveAt γ v t₀ := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_mul_ne_zero ha⟩
  convert! hγ.comp_mul_ne_zero (inv_ne_zero ha)
  · ext t
    simp only [comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · ext t
    simp only [comp_apply, Pi.smul_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one,
      smul_smul, one_smul]
  · simp only [div_inv_eq_mul, div_mul_cancel₀ _ ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/Transform/Variant1cbad7b44cbad77f30349c023112f188f7de2c8a842198616c6196c6394008ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Variant1cbad7b44cbad77f30349c023112f188f7de2c8a842198616c6196c6394008ec.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662da43c6977048ed82506ab3bb9570b560569c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
