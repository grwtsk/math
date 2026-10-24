# reciprocal_half_cutoff_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2434d9b-9647-2c51-2100-60ff0b588875",
  "kind": "theorem",
  "lexical_name": "reciprocal_half_cutoff_tail_le",
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
  "slug": "reciprocal-half-cutoff-tail-le--034d80cf986b67adcce8a4f7",
  "source": {
    "blob": "b5f80b70b49af1316f76b49a6cbfba65fdc5def4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034d80cf986b67adcce8a4f7f45f5d736026d8158eec1d6ab2493dcf5cb3b3da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2434d9b-9647-2c51-2100-60ff0b588875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_half_cutoff_tail_le (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  have hY : (0 : ℝ) < (Y : ℝ) + 1 := by positivity
  calc
    _ ≤ ∑ _g ∈ Ioc Y G, 1 / ((Y : ℝ) + 1) := by
      apply sum_le_sum
      intro g hg
      apply one_div_le_one_div_of_le hY
      have hg1 : Y + 1 ≤ g := by have hh := (mem_Ioc.mp hg).1; omega
      exact_mod_cast hg1
    _ = ((G - Y : ℕ) : ℝ) / ((Y : ℝ) + 1) := by
      simp only [sum_const, Nat.card_Ioc, nsmul_eq_mul, mul_one_div]
    _ ≤ 1 := by
      apply (div_le_one hY).mpr
      have hcard : G - Y ≤ Y + 1 := by omega
      exact_mod_cast hcard

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f80b70b49af1316f76b49a6cbfba65fdc5def4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
