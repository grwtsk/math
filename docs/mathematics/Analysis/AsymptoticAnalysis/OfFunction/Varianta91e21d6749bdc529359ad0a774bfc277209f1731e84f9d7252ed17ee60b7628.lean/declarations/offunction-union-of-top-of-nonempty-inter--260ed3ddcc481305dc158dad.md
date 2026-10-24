# ofFunction_union_of_top_of_nonempty_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1a03aa1-4d13-d4c6-33db-e4947c3786ec",
  "kind": "theorem",
  "lexical_name": "ofFunction_union_of_top_of_nonempty_inter",
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
  "slug": "offunction-union-of-top-of-nonempty-inter--260ed3ddcc481305dc158dad",
  "source": {
    "blob": "0e14b07315fc17f7cf534c1736e086d2ac5582b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 163,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:260ed3ddcc481305dc158dad7c8d74673adb6231f95ad06a4e5d0e44ef33a6b0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a03aa1-4d13-d4c6-33db-e4947c3786ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFunction_union_of_top_of_nonempty_inter {s t : Set α}
    (h : ∀ u, (s ∩ u).Nonempty → (t ∩ u).Nonempty → m u = ∞) :
    OuterMeasure.ofFunction m m_empty (s ∪ t) =
      OuterMeasure.ofFunction m m_empty s + OuterMeasure.ofFunction m m_empty t := by
  refine le_antisymm (measure_union_le _ _) (le_iInf₂ fun f hf ↦ ?_)
  set μ := OuterMeasure.ofFunction m m_empty
  rcases Classical.em (∃ i, (s ∩ f i).Nonempty ∧ (t ∩ f i).Nonempty) with (⟨i, hs, ht⟩ | he)
  · calc
      μ s + μ t ≤ ∞ := le_top
      _ = m (f i) := (h (f i) hs ht).symm
      _ ≤ ∑' i, m (f i) := ENNReal.le_tsum i

  set I := fun s => { i : ℕ | (s ∩ f i).Nonempty }
  have hd : Disjoint (I s) (I t) := disjoint_iff_inf_le.mpr fun i hi => he ⟨i, hi⟩
  have hI : ∀ u ⊆ s ∪ t, μ u ≤ ∑' i : I u, μ (f i) := fun u hu =>
    calc
      μ u ≤ μ (⋃ i : I u, f i) :=
        μ.mono fun x hx =>
          let ⟨i, hi⟩ := mem_iUnion.1 (hf (hu hx))
          mem_iUnion.2 ⟨⟨i, ⟨x, hx, hi⟩⟩, hi⟩
      _ ≤ ∑' i : I u, μ (f i) := measure_iUnion_le _

  calc
    μ s + μ t ≤ (∑' i : I s, μ (f i)) + ∑' i : I t, μ (f i) :=
      add_le_add (hI _ subset_union_left) (hI _ subset_union_right)
    _ = ∑' i : ↑(I s ∪ I t), μ (f i) :=
      (ENNReal.summable.tsum_union_disjoint (f := fun i => μ (f i)) hd ENNReal.summable).symm
    _ ≤ ∑' i, μ (f i) :=
      (ENNReal.summable.tsum_le_tsum_of_inj (↑) Subtype.coe_injective (fun _ _ => zero_le _)
        (fun _ => le_rfl) ENNReal.summable)
    _ ≤ ∑' i, m (f i) := ENNReal.tsum_le_tsum fun i => ofFunction_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OfFunction/Varianta91e21d6749bdc529359ad0a774bfc277209f1731e84f9d7252ed17ee60b7628.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e14b07315fc17f7cf534c1736e086d2ac5582b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
