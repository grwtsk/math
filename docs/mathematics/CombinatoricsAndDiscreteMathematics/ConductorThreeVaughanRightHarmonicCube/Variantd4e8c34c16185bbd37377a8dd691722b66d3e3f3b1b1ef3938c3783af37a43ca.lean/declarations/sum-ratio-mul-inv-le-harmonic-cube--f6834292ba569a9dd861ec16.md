# sum_ratio_mul_inv_le_harmonic_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:993bfc48-75b3-e5ff-f682-8b209d877958",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7f37c14-6e84-a3e2-0b64-bba7e99d8624",
  "kind": "theorem",
  "lexical_name": "sum_ratio_mul_inv_le_harmonic_cube",
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
  "slug": "sum-ratio-mul-inv-le-harmonic-cube--f6834292ba569a9dd861ec16",
  "source": {
    "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6834292ba569a9dd861ec16039ed061f3987adb12e50aae894f495f695fd646",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f37c14-6e84-a3e2-0b64-bba7e99d8624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_ratio_mul_inv_le_harmonic_cube (V : ℕ) :
    (∑ r ∈ Finset.Ioc 0 V,
      positiveMultipleRatioSum V r * positiveMultipleInvSum V r) ≤
      (harmonic V : ℝ) ^ 3 := by
  have hH : 0 ≤ (harmonic V : ℝ) := by
    rw [cast_harmonic_eq_sum_Ioc_inv]
    positivity
  calc
    (∑ r ∈ Finset.Ioc 0 V,
        positiveMultipleRatioSum V r * positiveMultipleInvSum V r) ≤
      ∑ r ∈ Finset.Ioc 0 V,
        (harmonic V : ℝ) * ((r : ℝ)⁻¹ * (harmonic V : ℝ)) := by
      apply Finset.sum_le_sum
      intro r hr
      have hrpos : 0 < r := (Finset.mem_Ioc.mp hr).1
      exact mul_le_mul
        (positiveMultipleRatioSum_le_harmonic V r hrpos)
        (positiveMultipleInvSum_le V r hrpos)
        (positiveMultipleInvSum_nonneg V r) hH
    _ = (harmonic V : ℝ) ^ 3 := by
      rw [← Finset.mul_sum, ← Finset.sum_mul]
      rw [← cast_harmonic_eq_sum_Ioc_inv]
      ring

/-- The sharp finite harmonic-cube estimate for the exact lcm envelope. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2555ee4232fc512e8ded72e74fedf561bc53a98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
