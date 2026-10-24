# restricted_shifted_product_abs_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "943111eb1820f25101e2e2e418d3b3e71081629e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc364819-998b-777d-167b-c866686648a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acc2af34-3ecd-728d-5c73-9e1044490d49",
  "kind": "theorem",
  "lexical_name": "restricted_shifted_product_abs_le_energy",
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
  "slug": "restricted-shifted-product-abs-le-energy--7bd53b24ffc7c72caec4e42f",
  "source": {
    "blob": "943111eb1820f25101e2e2e418d3b3e71081629e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd53b24ffc7c72caec4e42fd053854c157a7131eb8c81709fd4dcf870ac17ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc2af34-3ecd-728d-5c73-9e1044490d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem restricted_shifted_product_abs_le_energy {f : ℝ → ℝ}
    (hf : Integrable (fun v : ℝ ↦ (f v) ^ 2)) (S : Set ℝ) (x y : ℝ)
    (hm : Integrable (fun v : ℝ ↦ f (v + x) * f (v + y))) :
    |∫ v in S, f (v + x) * f (v + y)| ≤ ∫ v : ℝ, (f v) ^ 2 := by
  have hx := hf.comp_add_right x
  have hy := hf.comp_add_right y
  have hmaj : Integrable (fun v : ℝ ↦ ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2) :=
    (hx.add hy).div_const 2
  calc
    |∫ v in S, f (v + x) * f (v + y)| ≤
        ∫ v in S, |f (v + x) * f (v + y)| := abs_integral_le_integral_abs
    _ ≤ ∫ v in S, ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2 := by
      apply integral_mono hm.integrableOn.abs hmaj.integrableOn
      intro v
      change |f (v + x) * f (v + y)| ≤ ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f (v + x)| - |f (v + y)|),
        sq_abs (f (v + x)), sq_abs (f (v + y))]
    _ ≤ ∫ v : ℝ, ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2 := by
      exact integral_mono_measure Measure.restrict_le_self
        (Filter.Eventually.of_forall (fun v ↦ by positivity)) hmaj
    _ = ∫ v : ℝ, (f v) ^ 2 := by
      rw [integral_div, integral_add hx hy,
        integral_add_right_eq_self (fun v : ℝ ↦ (f v) ^ 2) x,
        integral_add_right_eq_self (fun v : ℝ ↦ (f v) ^ 2) y]
      ring

/-- The existing literal source normalization bounds every restricted mass pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/003SourceRestrictedMixedPairing/Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943111eb1820f25101e2e2e418d3b3e71081629e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
