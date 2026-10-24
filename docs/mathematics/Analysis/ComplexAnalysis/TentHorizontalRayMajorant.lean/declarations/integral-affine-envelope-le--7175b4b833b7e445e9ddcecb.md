# integral_affine_envelope_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b65362-7bdb-3725-cdd3-cb31f4b708b2",
  "kind": "theorem",
  "lexical_name": "integral_affine_envelope_le",
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
  "slug": "integral-affine-envelope-le--7175b4b833b7e445e9ddcecb",
  "source": {
    "blob": "3c01638c882fed0a2d4032ee54dc4f6052205d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7175b4b833b7e445e9ddcecb74bba7282465fb36ed169f873511ed99e6bbb1a1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b65362-7bdb-3725-cdd3-cb31f4b708b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_affine_envelope_le (x h A y l : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hA : 0 ≤ A) (hy : y ≠ 0) (hl : l ≤ 2) :
    (∫ σ in l..2, (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) ≤
      affineRayBudget x h A / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ => (A + (2 - σ) / 2) * numeratorProfile x h σ) :=
    (by fun_prop : Continuous (fun σ : ℝ => A + (2 - σ) / 2)).mul
      (continuous_numeratorProfile x h)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun σ _ => affineProfilePrimitive_deriv x h A σ hh ha) (hc.intervalIntegrable l 2)
  rw [intervalIntegral.integral_div, he]
  have hd : 0 < h * y ^ 2 := mul_pos hh (sq_pos_of_ne_zero hy)
  calc
    _ ≤ affineProfilePrimitive x h A 2 / (h * y ^ 2) :=
      div_le_div_of_nonneg_right
        (sub_le_self _ (affineProfilePrimitive_nonneg x h A l hh ha hA hl)) hd.le
    _ = _ := by unfold affineRayBudget; ring

/-- Any continuous complex function with this envelope has uniformly bounded finite norm mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01638c882fed0a2d4032ee54dc4f6052205d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
