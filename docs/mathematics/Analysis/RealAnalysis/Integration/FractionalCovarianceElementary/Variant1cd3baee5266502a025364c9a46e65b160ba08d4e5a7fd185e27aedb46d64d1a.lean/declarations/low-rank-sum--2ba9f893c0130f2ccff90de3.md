# low_rank_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85b1eb0a-8200-76fb-a6b3-1a2e0b0063d7",
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
  "slug": "low-rank-sum--2ba9f893c0130f2ccff90de3",
  "source": {
    "blob": "1b3e55811fe4c023c714c0f908643032f2035738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ba9f893c0130f2ccff90de365adfa5ab6f7dc5a50e2f8319b05dcce804caaeb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85b1eb0a-8200-76fb-a6b3-1a2e0b0063d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalCovarianceElementary/Variant1cd3baee5266502a025364c9a46e65b160ba08d4e5a7fd185e27aedb46d64d1a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3e55811fe4c023c714c0f908643032f2035738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
