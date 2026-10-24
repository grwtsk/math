# riesz_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fc30104864f2136bd22911ddbb0e41fa8153eaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b084772a-fccc-df60-0bf2-3353fc6f111a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffb5f0ab-93f9-8e26-fede-348b12984ca1",
  "kind": "theorem",
  "lexical_name": "riesz_lemma",
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
  "slug": "riesz-lemma--4e69f3eef5d02dd35be88e35",
  "source": {
    "blob": "1fc30104864f2136bd22911ddbb0e41fa8153eaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 39,
    "path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e69f3eef5d02dd35be88e35fe106e4c2595067d7349dba138e1ae83d42e8c6d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb5f0ab-93f9-8e26-fede-348b12984ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_lemma {F : Subspace 𝕜 E} (hFc : IsClosed (F : Set E)) (hF : ∃ x : E, x ∉ F) {r : ℝ}
    (hr : r < 1) : ∃ x₀ : E, x₀ ∉ F ∧ ∀ y ∈ F, r * ‖x₀‖ ≤ ‖x₀ - y‖ := by
  classical
    obtain ⟨x, hx⟩ : ∃ x : E, x ∉ F := hF
    let d := Metric.infDist x F
    have hFn : (F : Set E).Nonempty := ⟨_, F.zero_mem⟩
    have hdp : 0 < d :=
      lt_of_le_of_ne Metric.infDist_nonneg fun heq =>
        hx ((hFc.mem_iff_infDist_zero hFn).2 heq.symm)
    let r' := max r 2⁻¹
    have hr' : r' < 1 := by
      simp only [r', max_lt_iff, hr, true_and]
      norm_num
    have hlt : 0 < r' := lt_of_lt_of_le (by norm_num) (le_max_right r 2⁻¹)
    have hdlt : d < d / r' := (lt_div_iff₀ hlt).mpr ((mul_lt_iff_lt_one_right hdp).2 hr')
    obtain ⟨y₀, hy₀F, hxy₀⟩ : ∃ y ∈ F, dist x y < d / r' := (Metric.infDist_lt_iff hFn).mp hdlt
    have x_ne_y₀ : x - y₀ ∉ F := by
      by_contra h
      have : x - y₀ + y₀ ∈ F := F.add_mem h hy₀F
      simp only [neg_add_cancel_right, sub_eq_add_neg] at this
      exact hx this
    refine ⟨x - y₀, x_ne_y₀, fun y hy => le_of_lt ?_⟩
    have hy₀y : y₀ + y ∈ F := F.add_mem hy₀F hy
    calc
      r * ‖x - y₀‖ ≤ r' * ‖x - y₀‖ := by gcongr; apply le_max_left
      _ < d := by
        rw [← dist_eq_norm]
        exact (lt_div_iff₀' hlt).1 hxy₀
      _ ≤ dist x (y₀ + y) := Metric.infDist_le_dist_of_mem hy₀y
      _ = ‖x - y₀ - y‖ := by rw [sub_sub, dist_eq_norm]

/--
A version of Riesz lemma: given a strict closed subspace `F`, one may find an element of norm `≤ R`
which is at distance at least `1` of every element of `F`. Here, `R` is any given constant
strictly larger than the norm of an element of norm `> 1`. For a version without an `R`, see
`riesz_lemma`.

Since we are considering a general nontrivially normed field, there may be a gap in possible norms
(for instance no element of norm in `(1,2)`). Hence, we can not allow `R` arbitrarily close to `1`,
and require `R > ‖c‖` for some `c : 𝕜` with norm `> 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc30104864f2136bd22911ddbb0e41fa8153eaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
