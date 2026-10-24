# time_weighted_absolute_pickup_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba78bfec-305f-f481-e2cf-ab81c9a3d290",
  "kind": "theorem",
  "lexical_name": "time_weighted_absolute_pickup_bound",
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
  "slug": "time-weighted-absolute-pickup-bound--1f76434be6a3f8742f1cf599",
  "source": {
    "blob": "8d3afc1e5e733abfba81c9b96afbaad5d860e83b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 204,
    "path": "GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f76434be6a3f8742f1cf5990bcb5d28626f03b6b9d5d54e699a15d0ee2400b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba78bfec-305f-f481-e2cf-ab81c9a3d290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem time_weighted_absolute_pickup_bound {σ : ℝ} (hσ : 0 < σ) (t : ℝ) :
    timeWeightedAbsolutePickup σ t ≤ (σ / 2)⁻¹ * weightedAbsolutePickup (σ / 2) t := by
  have half : 0 < σ / 2 := by linarith
  have basic : (σ / 2) * t ≤ Real.exp ((σ / 2) * t) := by
    linarith [Real.add_one_le_exp ((σ / 2) * t)]
  have timeBound : t ≤ Real.exp ((σ / 2) * t) / (σ / 2) :=
    (le_div_iff₀ half).mpr (by simpa only [mul_comm] using basic)
  have absorbed : t * Real.exp (-σ * t) ≤ (σ / 2)⁻¹ * Real.exp (-(σ / 2) * t) := by
    calc
      _ ≤ (Real.exp ((σ / 2) * t) / (σ / 2)) * Real.exp (-σ * t) :=
        mul_le_mul_of_nonneg_right timeBound (Real.exp_pos _).le
      _ = (σ / 2)⁻¹ * Real.exp (-(σ / 2) * t) := by
        rw [div_eq_mul_inv]
        calc
          _ = (σ / 2)⁻¹ * (Real.exp ((σ / 2) * t) * Real.exp (-σ * t)) := by ring
          _ = _ := by rw [← Real.exp_add]; congr 2; ring
  have multiplied := mul_le_mul_of_nonneg_right absorbed (abs_nonneg (pickup t))
  dsimp [timeWeightedAbsolutePickup, weightedAbsolutePickup]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d3afc1e5e733abfba81c9b96afbaad5d860e83b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
