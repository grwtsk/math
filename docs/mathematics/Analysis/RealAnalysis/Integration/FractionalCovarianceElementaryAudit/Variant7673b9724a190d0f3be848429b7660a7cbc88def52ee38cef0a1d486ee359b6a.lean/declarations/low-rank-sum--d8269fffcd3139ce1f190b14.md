# low_rank_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d9e1a8d-bf4a-5ed6-2d0c-eaadf9bf70a6",
  "kind": "theorem",
  "lexical_name": "low_rank_sum",
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
  "slug": "low-rank-sum--d8269fffcd3139ce1f190b14",
  "source": {
    "blob": "0bf6173162e2e35fb50dfbba55b2e9734e216584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8269fffcd3139ce1f190b14e56e6a495c41ac8bc40c02be2c1e0f8fbb9b392c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9e1a8d-bf4a-5ed6-2d0c-eaadf9bf70a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem low_rank_sum (S : Finset ℕ) (c u l : ℕ → ℝ) (C : ℝ) :
    (∑ d ∈ S, ∑ e ∈ S, c d * c e *
      (C / 2 * (u d + u e) + (u d - u e) * (l d - l e) / 2)) =
      C * (∑ d ∈ S, c d) * (∑ d ∈ S, c d * u d) +
      (∑ d ∈ S, c d) * (∑ d ∈ S, c d * u d * l d) -
      (∑ d ∈ S, c d * u d) * (∑ d ∈ S, c d * l d) := by
  have ht (d e : ℕ) : c d * c e *
      (C / 2 * (u d + u e) + (u d - u e) * (l d - l e) / 2) =
      C / 2 * (c d * u d) * c e + C / 2 * c d * (c e * u e) +
      (c d * u d * l d) / 2 * c e - (c d * u d) / 2 * (c e * l e) -
      (c d * l d) / 2 * (c e * u e) + c d / 2 * (c e * u e * l e) := by ring
  have hp (f g : ℕ → ℝ) : (∑ d ∈ S, ∑ e ∈ S, f d * g e) =
      (∑ d ∈ S, f d) * (∑ e ∈ S, g e) := by
    simp only [mul_sum, sum_mul]
    exact sum_comm
  simp only [ht, sum_add_distrib, sum_sub_distrib]
  simp only [hp]
  simp only [← mul_sum, ← sum_div]
  ring

/-- The exact undamped endpoint does not remove the surviving elementary covariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementaryAudit/Variant7673b9724a190d0f3be848429b7660a7cbc88def52ee38cef0a1d486ee359b6a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf6173162e2e35fb50dfbba55b2e9734e216584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
