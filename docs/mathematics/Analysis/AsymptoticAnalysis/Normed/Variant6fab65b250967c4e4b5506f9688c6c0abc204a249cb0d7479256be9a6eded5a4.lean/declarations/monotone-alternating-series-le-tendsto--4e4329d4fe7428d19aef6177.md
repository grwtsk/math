# Monotone.alternating_series_le_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:983797ce-5281-83de-4ab1-d7522a4ecd1f",
  "kind": "theorem",
  "lexical_name": "Monotone.alternating_series_le_tendsto",
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
  "slug": "monotone-alternating-series-le-tendsto--4e4329d4fe7428d19aef6177",
  "source": {
    "blob": "e68edfcfdf903cdee0d61757e0922e384e43017b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 798,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e4329d4fe7428d19aef6177e742535a5c7eb269a956f1b14f235ed6c7ea46eb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:983797ce-5281-83de-4ab1-d7522a4ecd1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.alternating_series_le_tendsto
    (hfl : Tendsto (fun n ↦ ∑ i ∈ range n, (-1) ^ i * f i) atTop (𝓝 l))
    (hfm : Monotone f) (k : ℕ) : ∑ i ∈ range (2 * k + 1), (-1) ^ i * f i ≤ l := by
  have hm : Monotone (fun n ↦ ∑ i ∈ range (2 * n + 1), (-1) ^ i * f i) := by
    refine monotone_nat_of_le_succ (fun n ↦ ?_)
    rw [show 2 * (n + 1) = 2 * n + 1 + 1 by ring,
      sum_range_succ _ (2 * n + 1 + 1), sum_range_succ _ (2 * n + 1)]
    simp_rw [_root_.pow_succ', show (-1 : E) ^ (2 * n) = 1 by simp, neg_one_mul, neg_neg, one_mul,
      ← sub_eq_add_neg, sub_add_eq_add_sub, le_sub_iff_add_le]
    gcongr
    exact hfm (by omega)
  exact hm.ge_of_tendsto (hfl.comp (tendsto_atTop_mono (fun n ↦ by dsimp; omega) tendsto_id)) _

/-- Partial sums of an alternating antitone series with an even number of terms provide
lower bounds on the limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68edfcfdf903cdee0d61757e0922e384e43017b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
