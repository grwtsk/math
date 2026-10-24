# sqSeries_hasFPowerSeriesAt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 585,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:658c0682-1604-50ba-d3b8-e7f3f979beec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:370cb471-2301-6b70-732d-df9293e7b578",
  "kind": "lemma",
  "lexical_name": "sqSeries_hasFPowerSeriesAt_zero",
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
  "slug": "sqseries-hasfpowerseriesat-zero--1d9777fe2d757810211287df",
  "source": {
    "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 585,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9777fe2d757810211287df6dedfb6435e8f3bfe79ed192b96df060eea2e447",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:370cb471-2301-6b70-732d-df9293e7b578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sqSeries_hasFPowerSeriesAt_zero :
    HasFPowerSeriesAt (fun x : ℝ => x ^ 2) sqSeries 0 := by
  rw [hasFPowerSeriesAt_iff]
  filter_upwards [Filter.univ_mem] with z _
  -- sqSeries.coeff n = if n = 2 then 1 else 0
  -- So the series is just z^2 • 1 = z^2 at n=2, and 0 elsewhere
  have hcoeff : ∀ n, sqSeries.coeff n = if n = 2 then 1 else 0 := by
    intro n
    simp only [sqSeries, FormalMultilinearSeries.coeff_ofScalars]
  simp only [zero_add]
  -- The sum ∑ z^n • (if n = 2 then 1 else 0) = z^2
  convert hasSum_single 2 (fun n hn => ?_)
  · simp only [hcoeff, ↓reduceIte, smul_eq_mul, mul_one]
  · simp only [hcoeff, hn, ↓reduceIte, smul_eq_mul, mul_zero]

-- The n-th derivative of (1+x²)^a at 0
-- Odd derivatives vanish (function is even), even derivatives come from binomial series
--
-- Mathematical justification:
-- 1. f(x) = (1+x²)^a is even: f(-x) = f(x), so all odd derivatives at 0 vanish.
-- 2. The Taylor series is (1+x²)^a = Σ_{k=0}^∞ Ring.choose(a,k) * x^(2k)
--    (composition of binomial series with x²).
-- 3. So iteratedDeriv (2k) f 0 = (2k)! * Ring.choose(a,k).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4340fe46dfba1e97488de14f88a8acf6b3d3cdcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
