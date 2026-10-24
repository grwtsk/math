# exists_far_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8273da9-f9a6-0cf2-e630-9a3fac36bd51",
  "kind": "lemma",
  "lexical_name": "exists_far_point",
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
  "slug": "exists-far-point--771a86cdaccbb71a05d8366a",
  "source": {
    "blob": "d97c35408e53dc199598cbe28b616fc5cf347344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:771a86cdaccbb71a05d8366af1b0a338b1d01191c6bd7ea4faebdbddfed3b562",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8273da9-f9a6-0cf2-e630-9a3fac36bd51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_far_point (S : Finset ℝ) (a : ℝ) :
    ∃ R : ℝ, a ≤ R ∧ R ≤ a + 1 ∧ ∀ y ∈ S, 1 / (2 * ((S.card : ℝ) + 1)) ≤ |R - y| := by
  classical
  set n : ℕ := S.card with hn
  set δ : ℝ := 1 / (2 * ((n : ℝ) + 1)) with hδ
  have hδpos : 0 < δ := by rw [hδ]; positivity
  have hδn : 2 * ((n : ℝ) + 1) * δ = 1 := by rw [hδ]; field_simp
  set cand : ℕ → ℝ := fun k => a + (2 * (k : ℝ) + 1) * δ with hcand
  by_contra hcon
  push Not at hcon
  have hbad : ∀ k ∈ Finset.range (n + 1), ∃ y ∈ S, |cand k - y| < δ := by
    intro k hk
    have hk' : (k : ℝ) ≤ n := by exact_mod_cast Nat.lt_succ_iff.mp (Finset.mem_range.mp hk)
    have h1 : a ≤ cand k := by simp only [hcand]; nlinarith
    have h2 : cand k ≤ a + 1 := by
      simp only [hcand]
      have : (2 * (k : ℝ) + 1) * δ ≤ (2 * (n : ℝ) + 1) * δ := by gcongr
      nlinarith
    obtain ⟨y, hy, hlt⟩ := hcon (cand k) h1 h2
    exact ⟨y, hy, hlt⟩
  choose! f hf using hbad
  have hmaps : Set.MapsTo f (Finset.range (n + 1)) S := fun k hk => (hf k hk).1
  obtain ⟨x, hx, y, hy, hxy, hfxy⟩ :=
    Finset.exists_ne_map_eq_of_card_lt_of_maps_to (by simp [hn]) hmaps
  have h1 := (hf x hx).2
  have h2 := (hf y hy).2
  rw [hfxy] at h1
  -- |cand x − cand y| = 2|x − y|δ ≥ 2δ, but < 2δ by the triangle inequality
  have hdist : |cand x - cand y| = 2 * |(x : ℝ) - y| * δ := by
    simp only [hcand]
    rw [show a + (2 * (x:ℝ) + 1) * δ - (a + (2 * (y:ℝ) + 1) * δ) = (2 * δ) * ((x:ℝ) - y) by ring,
      abs_mul, abs_of_pos (by positivity)]
    ring
  have hxy1 : (1 : ℝ) ≤ |(x : ℝ) - y| := by
    rcases Nat.lt_or_gt_of_ne hxy with h | h
    · have : (x : ℝ) + 1 ≤ y := by exact_mod_cast h
      rw [abs_of_nonpos (by linarith)]; linarith
    · have : (y : ℝ) + 1 ≤ x := by exact_mod_cast h
      rw [abs_of_nonneg (by linarith)]; linarith
  have htri : |cand x - cand y| < 2 * δ := by
    calc |cand x - cand y| = |(cand x - f y) - (cand y - f y)| := by ring_nf
      _ ≤ |cand x - f y| + |cand y - f y| := abs_sub _ _
      _ < δ + δ := add_lt_add h1 h2
      _ = 2 * δ := by ring
  rw [hdist] at htri
  nlinarith

/-! ### Elementary facts used below -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant827a9d96bdcea45d6c6d77078eb0788599ffc68145a04b73d653a353191f6258.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97c35408e53dc199598cbe28b616fc5cf347344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
