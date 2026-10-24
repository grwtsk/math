# norm_smulRight_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe269834-017a-cfcd-4284-fefe84576b2c",
  "kind": "theorem",
  "lexical_name": "norm_smulRight_apply",
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
  "slug": "norm-smulright-apply--757db9a01e7406d95d36123f",
  "source": {
    "blob": "5ac94975a080f6513d6777d378c9adbe53cc094b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 373,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:757db9a01e7406d95d36123f0aa9796dc2fae400a9182bfb68b2337a08c12fa1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe269834-017a-cfcd-4284-fefe84576b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_smulRight_apply (c : E →L[𝕜] 𝕜) (f : Fₗ) : ‖smulRight c f‖ = ‖c‖ * ‖f‖ := by
  refine le_antisymm ?_ ?_
  · refine opNorm_le_bound _ (by positivity) fun x => ?_
    calc
      ‖c x • f‖ = ‖c x‖ * ‖f‖ := norm_smul _ _
      _ ≤ ‖c‖ * ‖x‖ * ‖f‖ := by gcongr; apply le_opNorm
      _ = ‖c‖ * ‖f‖ * ‖x‖ := by ring
  · obtain hf | hf := (norm_nonneg f).eq_or_gt
    · simp [hf]
    · rw [← le_div_iff₀ hf]
      refine opNorm_le_bound _ (by positivity) fun x => ?_
      rw [div_mul_eq_mul_div, le_div_iff₀ hf]
      calc
        ‖c x‖ * ‖f‖ = ‖c x • f‖ := (norm_smul _ _).symm
        _ = ‖smulRight c f x‖ := rfl
        _ ≤ ‖smulRight c f‖ * ‖x‖ := le_opNorm _ _

/-- The non-negative norm of the tensor product of a scalar linear map and of an element of a normed
space is the product of the non-negative norms. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variant4808b56cf2617d34310d48e6e25d5ff695adb0c8dc49b78f8b789ff4b1067260.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac94975a080f6513d6777d378c9adbe53cc094b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
