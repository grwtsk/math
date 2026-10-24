# xiCoeff_eq_sum_range_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d9220e9-5339-9a9b-398a-9a80735000d4",
  "kind": "lemma",
  "lexical_name": "xiCoeff_eq_sum_range_of_le",
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
  "slug": "xicoeff-eq-sum-range-of-le--23235d76c57258c17c2767b4",
  "source": {
    "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 290,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23235d76c57258c17c2767b47ae6bcd00519d7fb92caf2614bd7dd591d3b8591",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d9220e9-5339-9a9b-398a-9a80735000d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma xiCoeff_eq_sum_range_of_le (Λs : ℂ) {N M : ℕ} (hM : Ω N ≤ M) :
    xiCoeff Λs N = -((Λ N : ℝ) : ℂ) +
      ∑ j ∈ Finset.range M, (Λs⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ) := by
  unfold xiCoeff
  congr 1
  refine (sum_subset (range_subset_range.mpr hM) fun j _ hj => ?_)
  have : Ω N ≤ j := by simpa using hj
  rw [lamLogConv_eq_zero_of_le this]; simp

/-- C(N; conj Λ⋆) = conj C(N; Λ⋆)  (C is a real polynomial in Λ⋆⁻¹). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
