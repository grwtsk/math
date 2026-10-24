# actual_density_eq_low_density_on_left_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9f1d251-d424-d41a-526b-cd687c1e0419",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aede453f-a2dd-b50c-ac06-4cd7a90e17c8",
  "kind": "theorem",
  "lexical_name": "actual_density_eq_low_density_on_left_strip",
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
  "slug": "actual-density-eq-low-density-on-left-strip--751ec5bc60abf1ad91faa2d4",
  "source": {
    "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 513,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751ec5bc60abf1ad91faa2d40f9d3fdddf814c6a3dbcd9ad2422025ad28b6cfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aede453f-a2dd-b50c-ac06-4cd7a90e17c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_density_eq_low_density_on_left_strip {A : ℝ} (hA : 1 ≤ A)
    {v : ℝ} (hv : v ∈ actualWorkLeftStrip A) :
    actualMixedWorkDensity A v = actualLowMixedWorkDensity A v := by
  have hp : 0 < A := by linarith
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  unfold actualMixedWorkDensity actualLowMixedWorkDensity
  rw [actual_product_eq_low_product_on_left _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp) hv.1.2,
    actual_product_eq_low_product_on_left _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp) hv.1.2]

/-- The disclosed actual spatial remainder has a scale-independent absolute budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
