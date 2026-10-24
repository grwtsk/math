# measure_le_of_frequently_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cc3a4ec-52ed-0222-e15f-cfb4ae220697",
  "kind": "theorem",
  "lexical_name": "measure_le_of_frequently_le",
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
  "slug": "measure-le-of-frequently-le--58b59f2d6fe876e5e4143b4b",
  "source": {
    "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 128,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b59f2d6fe876e5e4143b4b5aa45b03babf98bf7c6682a4b8c2f190534656e4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc3a4ec-52ed-0222-e15f-cfb4ae220697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_of_frequently_le [SecondCountableTopology α] [BorelSpace α] {ρ : Measure α}
    (ν : Measure α) [IsLocallyFiniteMeasure ν] (hρ : ρ ≪ μ) (s : Set α)
    (hs : ∀ x ∈ s, ∃ᶠ a in v.filterAt x, ρ a ≤ ν a) : ρ s ≤ ν s := by
  -- this follows from a covering argument using the sets satisfying `ρ a ≤ ν a`.
  apply ENNReal.le_of_forall_pos_le_add fun ε εpos _ => ?_
  obtain ⟨U, sU, U_open, νU⟩ : ∃ (U : Set α), s ⊆ U ∧ IsOpen U ∧ ν U ≤ ν s + ε :=
    exists_isOpen_le_add s ν (ENNReal.coe_pos.2 εpos).ne'
  let f : α → Set (Set α) := fun _ => {a | ρ a ≤ ν a ∧ a ⊆ U}
  have h : v.FineSubfamilyOn f s := by
    apply v.fineSubfamilyOn_of_frequently f s fun x hx => ?_
    have :=
      (hs x hx).and_eventually
        ((v.eventually_filterAt_mem_setsAt x).and
          (v.eventually_filterAt_subset_of_nhds (U_open.mem_nhds (sU hx))))
    apply Frequently.mono this
    rintro a ⟨ρa, _, aU⟩
    exact ⟨ρa, aU⟩
  haveI : Encodable h.index := h.index_countable.toEncodable
  calc
    ρ s ≤ ∑' x : h.index, ρ (h.covering x) := h.measure_le_tsum_of_absolutelyContinuous hρ
    _ ≤ ∑' x : h.index, ν (h.covering x) := ENNReal.tsum_le_tsum fun x => (h.covering_mem x.2).1
    _ = ν (⋃ x : h.index, h.covering x) := by
      rw [measure_iUnion h.covering_disjoint_subtype fun i => h.measurableSet_u i.2]
    _ ≤ ν U := (measure_mono (iUnion_subset fun i => (h.covering_mem i.2).2))
    _ ≤ ν s + ε := νU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
