# finite_simple_interior_zeros_have_complete_chamber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aed1bf77-408c-8b74-a806-3b3a5d001b90",
  "kind": "theorem",
  "lexical_name": "finite_simple_interior_zeros_have_complete_chamber",
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
  "slug": "finite-simple-interior-zeros-have-complete-chamber--b4a0fc53e3c21eaef7389be5",
  "source": {
    "blob": "dc747dc4305fe98e23bee0348f98cfe32674a2fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteZeroInventoryChamber/Variant99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4a0fc53e3c21eaef7389be53607edc53e5e4df5699b9c9e77e9942792c24d84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteZeroInventoryChamber/Variant99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aed1bf77-408c-8b74-a806-3b3a5d001b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_simple_interior_zeros_have_complete_chamber {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ}
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀,x))
    (ha : g (l₀,a) ≠ 0) (hb : g (l₀,b) ≠ 0)
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hsimple : ∀ x ∈ Ioo a b, g (l₀,x) = 0 → spatialSlope g (l₀,x) ≠ 0) :
    ∃ (n : ℕ) (z : Fin n → ℝ → ℝ) (U : Set ℝ),
      IsOpen U ∧ l₀ ∈ U ∧ (∀ i, ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x)) := by
  classical
  have hinterior (x : ℝ) (hx : x ∈ Icc a b) (hz : g (l₀,x) = 0) : x ∈ Ioo a b := by
    have hxa : x ≠ a := by intro h; subst x; exact ha hz
    have hxb : x ≠ b := by intro h; subst x; exact hb hz
    constructor <;> rcases hx with ⟨hlo,hhi⟩ <;> order
  have hclosed : {x | x ∈ Icc a b ∧ g (l₀,x) = 0}.Finite :=
    hfinite.subset (fun x hx => ⟨hinterior x hx.1 hx.2,hx.2⟩)
  let s := hclosed.toFinset
  let x₀ : Fin s.card → ℝ := s.orderEmbOfFin rfl
  have hmem (i : Fin s.card) : x₀ i ∈ Icc a b ∧ g (l₀,x₀ i) = 0 := by
    have hm : x₀ i ∈ s := s.orderEmbOfFin_mem rfl i
    simpa only [s,Finite.mem_toFinset,Set.mem_ofPred_eq] using hm
  have hin (i : Fin s.card) : x₀ i ∈ Ioo a b := hinterior _ (hmem i).1 (hmem i).2
  have hord : StrictMono x₀ := (s.orderEmbOfFin rfl).strictMono
  have hcen (x : ℝ) (hx : x ∈ Icc a b) : g (l₀,x) = 0 ↔ ∃ i, x₀ i = x := by
    have hrange : range x₀ = (s : Set ℝ) := s.range_orderEmbOfFin rfl
    constructor
    · intro hz
      have hm : x ∈ s := by simpa only [s,Finite.mem_toFinset,Set.mem_ofPred_eq] using And.intro hx hz
      have hxr : x ∈ range x₀ := by rwa [hrange]
      exact hxr
    · rintro ⟨i,rfl⟩
      exact (hmem i).2
  obtain ⟨z,U,hU,hu,hzc,hcens⟩ := complete_ordered_zero_census_persists x₀ hc hin hord hcen
    (fun i => hsimple _ (hin i) (hmem i).2)
  exact ⟨s.card,z,U,hU,hu,fun i => (hzc i).2,hcens⟩

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteZeroInventoryChamber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteZeroInventoryChamber/Variant99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteZeroInventoryChamber/Variant99593e95a91ce30f599d4bd61beeb57a0853a479e958ef8fce6e7f22603f6132.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc747dc4305fe98e23bee0348f98cfe32674a2fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
