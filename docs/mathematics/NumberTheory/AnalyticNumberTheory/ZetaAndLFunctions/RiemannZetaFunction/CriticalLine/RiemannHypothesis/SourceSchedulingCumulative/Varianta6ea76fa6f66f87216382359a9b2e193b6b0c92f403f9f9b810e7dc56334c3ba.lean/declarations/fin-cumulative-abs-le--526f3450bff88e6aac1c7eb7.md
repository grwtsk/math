# fin_cumulative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c04513f-89fe-3a44-5bf2-0f942b52ea14",
  "kind": "theorem",
  "lexical_name": "fin_cumulative_abs_le",
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
  "slug": "fin-cumulative-abs-le--526f3450bff88e6aac1c7eb7",
  "source": {
    "blob": "88db11509c37ced63799bfd889fb318010b919e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:526f3450bff88e6aac1c7eb7730a331e841f6495963ea642f7b9a34534bbce73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c04513f-89fe-3a44-5bf2-0f942b52ea14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fin_cumulative_abs_le (c : ℕ → ℝ) {n : ℕ} (r : Fin (n + 1) → ℝ)
    (g : ℝ → ℝ) (L : ℝ) (hzero : (∑ i, r i) = 0)
    (hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |∑ i, r i * g (c i.val)| ≤ L * cumulativeCost c (extendFin r) n := by
  have htotal : schedulePrefix (extendFin r) (n + 1) = 0 := by
    rw [schedulePrefix, extendFin_sum, hzero]
  have hreadout := Fin.sum_univ_eq_sum_range
    (fun i => extendFin r i * g (c i)) (n + 1)
  simp only [extendFin_val] at hreadout
  rw [hreadout]
  exact cumulative_abs_le c (extendFin r) g n L htotal hgap hg

/-- First transport plus cumulative drift, with the displacement-induced drift intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Varianta6ea76fa6f66f87216382359a9b2e193b6b0c92f403f9f9b810e7dc56334c3ba.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88db11509c37ced63799bfd889fb318010b919e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
