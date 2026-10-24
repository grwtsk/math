# full_edge_factor_absolute_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b895a5e-1a51-1e04-88ca-815c44de5a6a",
  "kind": "theorem",
  "lexical_name": "full_edge_factor_absolute_upper",
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
  "slug": "full-edge-factor-absolute-upper--25c23b9127a75fa5689ceb1d",
  "source": {
    "blob": "fef0a00c412ab3250024b93bfab80e8dc959c30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c23b9127a75fa5689ceb1d610c3149de7c1c95aa00209a0b10afe1af3a4672",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b895a5e-1a51-1e04-88ca-815c44de5a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_edge_factor_absolute_upper {A s : ℝ} (hA : 0 < A)
    (hs0 : 0 ≤ s) (hsA : s ≤ 2 * A) :
    |edgeFactor A s| ≤ 4 * (64 + s ^ 2) := by
  have hu0 : 0 ≤ s / A := div_nonneg hs0 hA.le
  have hu2 : s / A ≤ 2 := (div_le_iff₀ hA).mpr hsA
  have hz : (A - s) / A = 1 - s / A := by field_simp
  have hz0 : 0 ≤ ((A - s) / A) ^ 2 := sq_nonneg _
  have hz1 : ((A - s) / A) ^ 2 ≤ 1 := by rw [hz]; nlinarith
  have hq0 : 0 ≤ (2 - s / A) ^ 2 := sq_nonneg _
  have hq4 : (2 - s / A) ^ 2 ≤ 4 := by nlinarith
  have hb : |7 * ((A - s) / A) ^ 2 - 1| ≤ 8 := by
    apply abs_le.mpr
    constructor <;> nlinarith
  have he : |s ^ 2 * (2 - s / A) ^ 2 / 4| ≤ s ^ 2 := by
    rw [abs_of_nonneg (by positivity)]
    nlinarith [mul_nonneg (sq_nonneg s) (sub_nonneg.mpr hq4)]
  have hbr : |8 * (7 * ((A - s) / A) ^ 2 - 1) -
      s ^ 2 * (2 - s / A) ^ 2 / 4| ≤ 64 + s ^ 2 := by
    exact (abs_sub _ _).trans (by rw [abs_mul]; norm_num; linarith)
  unfold edgeFactor
  rw [abs_mul, abs_of_nonneg hq0]
  exact mul_le_mul hq4 hbr (abs_nonneg _) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeUpper/Variant0fb8292ee8dc268453300cc11bba5f859f640a4870cabc1561a30fdbb2d3c3a7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef0a00c412ab3250024b93bfab80e8dc959c30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
