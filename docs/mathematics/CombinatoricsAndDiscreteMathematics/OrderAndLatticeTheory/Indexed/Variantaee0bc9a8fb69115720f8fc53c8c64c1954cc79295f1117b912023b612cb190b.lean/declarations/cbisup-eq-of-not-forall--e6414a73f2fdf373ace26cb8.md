# cbiSup_eq_of_not_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0ff3f15-e9e6-cbab-8e80-64d84d62abc1",
  "kind": "theorem",
  "lexical_name": "cbiSup_eq_of_not_forall",
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
  "slug": "cbisup-eq-of-not-forall--e6414a73f2fdf373ace26cb8",
  "source": {
    "blob": "8a5bcf2742de5496827351a21853f110b57b3f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantaee0bc9a8fb69115720f8fc53c8c64c1954cc79295f1117b912023b612cb190b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6414a73f2fdf373ace26cb8626a032c4d385db4c143ea39ae28400f9e14ec25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantaee0bc9a8fb69115720f8fc53c8c64c1954cc79295f1117b912023b612cb190b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0ff3f15-e9e6-cbab-8e80-64d84d62abc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cbiSup_eq_of_not_forall {p : ι → Prop} {f : Subtype p → α} (hp : ¬ (∀ i, p i)) :
    ⨆ (i) (h : p i), f ⟨i, h⟩ = iSup f ⊔ sSup ∅ := by
  classical
  rcases not_forall.1 hp with ⟨i₀, hi₀⟩
  have : Nonempty ι := ⟨i₀⟩
  simp only [ciSup_eq_ite]
  by_cases H : BddAbove (range f)
  · have B : BddAbove (range fun i ↦ if h : p i then f ⟨i, h⟩ else sSup ∅) := by
      rcases H with ⟨c, hc⟩
      refine ⟨c ⊔ sSup ∅, ?_⟩
      rintro - ⟨i, rfl⟩
      by_cases hi : p i
      · simp only [hi, dite_true, le_sup_iff, hc (mem_range_self _), true_or]
      · simp only [hi, dite_false, le_sup_right]
    apply le_antisymm
    · apply ciSup_le (fun i ↦ ?_)
      by_cases hi : p i
      · simp only [hi, dite_true, le_sup_iff]
        left
        exact le_ciSup H _
      · simp [hi]
    · apply sup_le
      · rcases isEmpty_or_nonempty (Subtype p) with hp|hp
        · rw [iSup_of_empty']
          convert le_ciSup B i₀
          simp [hi₀]
        · apply ciSup_le
          rintro ⟨i, hi⟩
          convert le_ciSup B i
          simp [hi]
      · convert le_ciSup B i₀
        simp [hi₀]
  · have : iSup f = sSup (∅ : Set α) := csSup_of_not_bddAbove H
    simp only [this, le_refl, sup_of_le_left]
    apply csSup_of_not_bddAbove
    contrapose! H
    apply H.mono
    rintro - ⟨i, rfl⟩
    convert mem_range_self i.1
    simp [i.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantaee0bc9a8fb69115720f8fc53c8c64c1954cc79295f1117b912023b612cb190b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantaee0bc9a8fb69115720f8fc53c8c64c1954cc79295f1117b912023b612cb190b.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5bcf2742de5496827351a21853f110b57b3f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
