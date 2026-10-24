# Antitone.tendsto_le_alternating_series

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29701963-3822-7e00-bec9-0c995fd85a01",
  "kind": "theorem",
  "lexical_name": "Antitone.tendsto_le_alternating_series",
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
  "slug": "antitone-tendsto-le-alternating-series--3d24c90dd62d3fdf340b107d",
  "source": {
    "blob": "e68edfcfdf903cdee0d61757e0922e384e43017b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 827,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d24c90dd62d3fdf340b107df7320a5b96a2e739fb74754a5e22b2f429974c57",
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

Occurrence: `result:29701963-3822-7e00-bec9-0c995fd85a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 827–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antitone.tendsto_le_alternating_series
    (hfl : Tendsto (fun n ↦ ∑ i ∈ range n, (-1) ^ i * f i) atTop (𝓝 l))
    (hfa : Antitone f) (k : ℕ) : l ≤ ∑ i ∈ range (2 * k + 1), (-1) ^ i * f i := by
  have ha : Antitone (fun n ↦ ∑ i ∈ range (2 * n + 1), (-1) ^ i * f i) := by
    refine antitone_nat_of_succ_le (fun n ↦ ?_)
    rw [show 2 * (n + 1) = 2 * n + 1 + 1 by ring, sum_range_succ, sum_range_succ]
    simp_rw [_root_.pow_succ', show (-1 : E) ^ (2 * n) = 1 by simp, neg_one_mul, neg_neg, one_mul,
      ← sub_eq_add_neg, sub_add_eq_add_sub, sub_le_iff_le_add]
    gcongr
    exact hfa (by omega)
  exact ha.le_of_tendsto (hfl.comp (tendsto_atTop_mono (fun n ↦ by dsimp; omega) tendsto_id)) _

end

/-!
### Factorial
-/

/-- The series `∑' n, x ^ n / n!` is summable of any `x : ℝ`. See also `expSeries_div_summable`
for a version that also works in `ℂ`, and `NormedSpace.expSeries_summable'` for a version
that works in any normed algebra over `ℝ` or `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean#L827).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68edfcfdf903cdee0d61757e0922e384e43017b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
