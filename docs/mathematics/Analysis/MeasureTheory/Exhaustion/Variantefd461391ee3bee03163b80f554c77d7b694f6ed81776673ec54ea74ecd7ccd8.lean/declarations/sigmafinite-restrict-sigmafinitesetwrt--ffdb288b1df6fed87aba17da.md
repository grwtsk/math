# sigmaFinite_restrict_sigmaFiniteSetWRT'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fe1c5f4-bc6f-f76d-dd37-9cdf040c0bed",
  "kind": "lemma",
  "lexical_name": "sigmaFinite_restrict_sigmaFiniteSetWRT'",
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
  "slug": "sigmafinite-restrict-sigmafinitesetwrt--ffdb288b1df6fed87aba17da",
  "source": {
    "blob": "1226e60b1fc97c6fed211d1281f324114d9eb547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 173,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffdb288b1df6fed87aba17daf1e7f19fbc93aeee78ad42899d6b52af930c18dc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fe1c5f4-bc6f-f76d-dd37-9cdf040c0bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sigmaFinite_restrict_sigmaFiniteSetWRT' (μ ν : Measure α) [IsFiniteMeasure ν] :
    SigmaFinite (μ.restrict (μ.sigmaFiniteSetWRT' ν)) := by
  have := sigmaFinite_restrict_sigmaFiniteSetGE μ ν
  let f : ℕ × ℕ → Set α := fun p : ℕ × ℕ ↦ (μ.sigmaFiniteSetWRT' ν)ᶜ
    ∪ (spanningSets (μ.restrict (μ.sigmaFiniteSetGE ν p.1)) p.2 ∩ (μ.sigmaFiniteSetGE ν p.1))
  suffices (μ.restrict (μ.sigmaFiniteSetWRT' ν)).FiniteSpanningSetsIn (Set.range f) from
    this.sigmaFinite
  let e : ℕ ≃ ℕ × ℕ := Nat.pairEquiv.symm
  refine ⟨fun n ↦ f (e n), fun _ ↦ by simp, fun n ↦ ?_, ?_⟩
  · simp only [Nat.pairEquiv_symm_apply, gt_iff_lt, measure_union_lt_top_iff, f, e]
    rw [Measure.restrict_apply' measurableSet_sigmaFiniteSetWRT', Set.compl_inter_self,
      Measure.restrict_apply' measurableSet_sigmaFiniteSetWRT']
    simp only [measure_empty, ENNReal.zero_lt_top, true_and]
    refine (measure_mono Set.inter_subset_left).trans_lt ?_
    rw [← Measure.restrict_apply' (measurableSet_sigmaFiniteSetGE _)]
    exact measure_spanningSets_lt_top _ _
  · simp only [Nat.pairEquiv_symm_apply, f, e]
    rw [← Set.union_iUnion]
    suffices ⋃ n, (spanningSets (μ.restrict (μ.sigmaFiniteSetGE ν (Nat.unpair n).1)) n.unpair.2
        ∩ μ.sigmaFiniteSetGE ν n.unpair.1) = μ.sigmaFiniteSetWRT' ν by
      rw [this, Set.compl_union_self]
    calc ⋃ n, (spanningSets (μ.restrict (μ.sigmaFiniteSetGE ν (Nat.unpair n).1)) n.unpair.2
        ∩ μ.sigmaFiniteSetGE ν n.unpair.1)
      = ⋃ n, ⋃ m, (spanningSets (μ.restrict (μ.sigmaFiniteSetGE ν n)) m
            ∩ μ.sigmaFiniteSetGE ν n) :=
          Set.iUnion_unpair (fun n m ↦ spanningSets (μ.restrict (μ.sigmaFiniteSetGE ν n)) m
            ∩ μ.sigmaFiniteSetGE ν n)
    _ = ⋃ n, μ.sigmaFiniteSetGE ν n := by
        refine Set.iUnion_congr (fun n ↦ ?_)
        rw [← Set.iUnion_inter, iUnion_spanningSets, Set.univ_inter]
    _ = μ.sigmaFiniteSetWRT' ν := rfl

/-- `μ.sigmaFiniteSetWRT' ν` has maximal `ν`-measure among all measurable sets `s` with sigma-finite
`μ.restrict s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantefd461391ee3bee03163b80f554c77d7b694f6ed81776673ec54ea74ecd7ccd8.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1226e60b1fc97c6fed211d1281f324114d9eb547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
