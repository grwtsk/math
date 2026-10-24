# ext_of_measurableAtoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dcb2eff-a0ea-cda0-ce0d-bdfca6f2bba6",
  "kind": "lemma",
  "lexical_name": "ext_of_measurableAtoms",
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
  "slug": "ext-of-measurableatoms--9935b5e4f14c62e7e5193e97",
  "source": {
    "blob": "d1db5b135ef957b4ac5c78b343d167163a8f62bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 489,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9935b5e4f14c62e7e5193e978db5465b8c266509150dfadf801a5bb3c8d7b482",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dcb2eff-a0ea-cda0-ce0d-bdfca6f2bba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_of_measurableAtoms [Countable α] {ν : Measure α}
    (h : ∀ x, μ (measurableAtom x) = ν (measurableAtom x)) : μ = ν := by
  ext s hs
  have h1 : s = ⋃ x ∈ s, measurableAtom x := by
    ext y
    simp only [mem_iUnion, exists_prop]
    refine ⟨fun hy ↦ ?_, fun ⟨x, hx, hy⟩ ↦ ?_⟩
    · exact ⟨y, hy, mem_measurableAtom_self y⟩
    · exact mem_of_mem_measurableAtom hy hs hx
  rw [← sUnion_image] at h1
  rw [h1]
  have h_count : (measurableAtom '' s).Countable := s.to_countable.image _
  have h_disj : (measurableAtom '' s).Pairwise Disjoint := by
    intro t ht t' ht' h_eq
    obtain ⟨y, hys, hy⟩ := ht
    obtain ⟨y', hy's, hy'⟩ := ht'
    rw [← hy, ← hy'] at h_eq ⊢
    refine disjoint_measurableAtom_of_notMem fun hyy' ↦ h_eq ?_
    exact measurableAtom_eq_of_mem hyy'
  have h_meas (t) (ht : t ∈ measurableAtom '' s) : MeasurableSet t := by
    obtain ⟨x, hxs, hx⟩ := ht
    rw [← hx]
    exact MeasurableSet.measurableAtom_of_countable x
  rw [measure_sUnion h_count h_disj h_meas, measure_sUnion h_count h_disj h_meas]
  congr with s'
  have hs' := s'.2
  obtain ⟨x, hxs, hx⟩ := hs'
  rw [← hx]
  exact h x

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variante4c699945a05a75c336fd6cf4044c39cbc245e994515421d677bdf1acb27a831.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1db5b135ef957b4ac5c78b343d167163a8f62bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
