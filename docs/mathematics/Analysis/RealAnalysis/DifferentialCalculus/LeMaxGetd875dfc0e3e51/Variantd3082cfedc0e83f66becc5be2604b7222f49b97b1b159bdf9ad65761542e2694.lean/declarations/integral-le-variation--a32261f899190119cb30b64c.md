# integral_le_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea4b9f87-0b60-73ae-6aa8-40714f783265",
  "kind": "lemma",
  "lexical_name": "integral_le_variation",
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
  "slug": "integral-le-variation--a32261f899190119cb30b64c",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1367,
    "line": 1336,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a32261f899190119cb30b64c7872ff90d1c7503e7bc03632cbe68300b8cb39c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea4b9f87-0b60-73ae-6aa8-40714f783265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1336–1367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_le_variation {a b : ℝ} (hab : a < b)
    (g : ℝ → ℝ) (g' : ℝ → ℝ)
    (hg : ∀ x ∈ Set.Icc a b, HasDerivAt g (g' x) x)
    (hg_bv : BoundedVariationOn g (Set.Icc a b))
    (I : ℝ) (hI : RS.Integ.HasRSIntegral (fun x => |g' x|) id a b I) :
    I ≤ (eVariationOn g (Set.Icc a b)).toReal := by
      -- Fix ε > 0.
      have h_eps : ∀ ε > 0, I ≤ (eVariationOn g (Set.Icc a b)).toReal + ε := by
        intro ε hε_pos
        obtain ⟨δ, hδ_pos, hδ⟩ : ∃ δ > 0, ∀ (T : Integ.TaggedPartition a b), T.mesh ≤ δ → |Integ.RSSum (fun x => |g' x|) id T - I| < ε := by
          exact hI ε hε_pos;
        -- Choose a uniform partition P with mesh ≤ δ.
        obtain ⟨P, hP⟩ : ∃ P : RS.IPart.IPartition a b, P.mesh ≤ δ := by
          -- Choose n such that (b - a) / (n + 1) ≤ δ.
          obtain ⟨n, hn⟩ : ∃ n : ℕ, (b - a) / (n + 1) ≤ δ := by
            exact ⟨ ⌊ ( b - a ) / δ⌋₊, by rw [ div_le_iff₀ ] <;> nlinarith [ Nat.lt_floor_add_one ( ( b - a ) / δ ), mul_div_cancel₀ ( b - a ) hδ_pos.ne' ] ⟩;
          exact ⟨ RS.IPart.uniformPartition n hab, by simpa only [ RS.IPart.mesh_uniformPartition ] using hn ⟩;
        -- Let T be the tagged partition obtained from the Mean Value Theorem applied to g on each subinterval of P.
        obtain ⟨T, hT⟩ : ∃ T : Integ.TaggedPartition a b, T.toIPartition = P ∧ ∀ i : Fin T.n, g (T.x i.succ) - g (T.x i.castSucc) = g' (T.xi i) * (T.x i.succ - T.x i.castSucc) := by
          exact RS.Integ.mvt_tags_for_partition P hg;
        -- By `sum_abs_diff_le_variation`, we have `sumAbsDiff g P ≤ (eVariationOn g (Set.Icc a b)).toReal`.
        have h_sum_abs_diff_le_variation : ∑ i : Fin P.n, |g (P.x i.succ) - g (P.x i.castSucc)| ≤ (eVariationOn g (Set.Icc a b)).toReal := by
          exact Integ.sum_abs_diff_le_variation P hg_bv;
        -- By `sumAbsDiff_eq_RSSum_abs_deriv`, we have `RSSum (fun x => |g' x|) id T = sumAbsDiff g P`.
        have h_RSSum_eq_sumAbsDiff : Integ.RSSum (fun x => |g' x|) id T = ∑ i : Fin P.n, |g (P.x i.succ) - g (P.x i.castSucc)| := by
          have h_RSSum_eq_sumAbsDiff : Integ.RSSum (fun x => |g' x|) id T = ∑ i : Fin T.n, |g' (T.xi i)| * (T.x i.succ - T.x i.castSucc) := by
            unfold Integ.RSSum; aesop;
          rw [ h_RSSum_eq_sumAbsDiff, ← hT.1 ];
          exact Finset.sum_congr rfl fun i _ => by rw [ hT.2 i, abs_mul, abs_of_nonneg ( sub_nonneg.mpr <| T.monotone <| Nat.le_succ _ ) ] ;
        linarith [ abs_lt.mp ( hδ T ( by simpa [ hT.1 ] using hP ) ) ];
      exact le_of_forall_pos_le_add h_eps

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L1336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
