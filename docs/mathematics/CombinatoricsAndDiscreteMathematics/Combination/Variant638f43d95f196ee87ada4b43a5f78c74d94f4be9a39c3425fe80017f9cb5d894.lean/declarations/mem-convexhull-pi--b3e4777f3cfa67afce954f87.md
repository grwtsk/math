# mem_convexHull_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5659dae9-7cc5-68ef-f344-e9c3049fd160",
  "kind": "lemma",
  "lexical_name": "mem_convexHull_pi",
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
  "slug": "mem-convexhull-pi--b3e4777f3cfa67afce954f87",
  "source": {
    "blob": "7b545e4be70920659c08118cd45bade7baf94040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 575,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e4777f3cfa67afce954f87287dbf815035bada0e89eb3e3344f17a9b3c4cc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5659dae9-7cc5-68ef-f344-e9c3049fd160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_convexHull_pi (h : ∀ i ∈ s, x i ∈ convexHull 𝕜 (t i)) : x ∈ convexHull 𝕜 (s.pi t) := by
  classical
  cases nonempty_fintype ι
  wlog hs : s = Set.univ generalizing s t
  · rw [← pi_univ_ite]
    refine this (fun i _ ↦ ?_) rfl
    split_ifs with hi
    · exact h i hi
    · simp
  subst hs
  simp only [Set.mem_univ, mem_convexHull_iff_exists_fintype, true_implies, Set.mem_pi] at h
  choose κ _ w f hw₀ hw₁ hft hf using h
  refine mem_convexHull_of_exists_fintype (fun k : Π i, κ i ↦ ∏ i, w i (k i)) (fun g i ↦ f _ (g i))
    (fun g ↦ prod_nonneg fun _ _ ↦ hw₀ _ _) ?_ (fun _ _ _ ↦ hft _ _) ?_
  · rw [← Fintype.prod_sum]
    exact prod_eq_one fun _ _ ↦ hw₁ _
  ext i
  calc
    _ = ∑ g : ∀ i, κ i, (∏ i, w i (g i)) • f i (g i) := by
      simp only [Finset.sum_apply, Pi.smul_apply]
    _ = ∑ j : κ i, ∑ g : {g : ∀ k, κ k // g i = j},
          (∏ k, w k (g.1 k)) • f i ((g : ∀ i, κ i) i) := by
      rw [← Fintype.sum_fiberwise fun g : ∀ k, κ k ↦ g i]
    _ = ∑ j : κ i, (∑ g : {g : ∀ k, κ k // g i = j}, ∏ k, w k (g.1 k)) • f i j := by
      simp_rw [sum_smul]
      congr! with j _ g _
      exact g.2
    _ = ∑ j : κ i, w i j • f i j := ?_
    _ = x i := hf _
  congr! with j _
  calc
    ∑ g : {g : ∀ k, κ k // g i = j}, ∏ k, w k (g.1 k)
      = ∑ g ∈ piFinset fun k ↦ if hk : k = i then hk ▸ {j} else univ, ∏ k, w k (g k) :=
      Finset.sum_bij' (fun g _ ↦ g) (fun g hg ↦ ⟨g, by simpa using mem_piFinset.1 hg i⟩)
        (by aesop) (by simp) (by simp) (by simp) (by simp)
    _ = w i j := by
      rw [← prod_univ_sum, ← prod_mul_prod_compl, Finset.prod_singleton, Finset.sum_eq_single,
        Finset.prod_eq_one, mul_one] <;> simp +contextual [hw₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b545e4be70920659c08118cd45bade7baf94040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
