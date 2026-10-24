# natSepDegree_mul_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8b1f4c3-a400-dc36-ff14-89edd6a945bf",
  "kind": "theorem",
  "lexical_name": "natSepDegree_mul_eq_iff",
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
  "slug": "natsepdegree-mul-eq-iff--84d1fa6c9e061ad5b9701024",
  "source": {
    "blob": "a7daa8503eeedcf4200b20ca5388abfd77f3d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 442,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d1fa6c9e061ad5b9701024ee8a7a2b56a8116acada90185a9a0b8f888dc98b",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b1f4c3-a400-dc36-ff14-89edd6a945bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natSepDegree_mul_eq_iff (g : F[X]) :
    (f * g).natSepDegree = f.natSepDegree + g.natSepDegree ↔ (f = 0 ∧ g = 0) ∨ IsCoprime f g := by
  by_cases h : f * g = 0
  · rw [mul_eq_zero] at h
    wlog hf : f = 0 generalizing f g
    · simpa only [mul_comm, add_comm, and_comm,
        isCoprime_comm] using this g f h.symm (h.resolve_left hf)
    rw [hf, zero_mul, natSepDegree_zero, zero_add, isCoprime_zero_left, isUnit_iff, eq_comm,
      natSepDegree_eq_zero_iff, natDegree_eq_zero]
    refine ⟨fun ⟨x, h⟩ ↦ ?_, ?_⟩
    · by_cases hx : x = 0
      · exact .inl ⟨rfl, by rw [← h, hx, map_zero]⟩
      exact .inr ⟨x, Ne.isUnit hx, h⟩
    rintro (⟨-, h⟩ | ⟨x, -, h⟩)
    · exact ⟨0, by rw [h, map_zero]⟩
    exact ⟨x, h⟩
  classical
  simp_rw [natSepDegree_eq_of_isAlgClosed (AlgebraicClosure F), aroots_mul h, Multiset.toFinset_add,
    Finset.card_union_eq_card_add_card, Finset.disjoint_iff_ne, Multiset.mem_toFinset, mem_aroots]
  rw [mul_eq_zero, not_or] at h
  refine ⟨fun H ↦ .inr (isCoprime_of_irreducible_dvd (not_and.2 fun _ ↦ h.2)
    fun u hu ⟨v, hf⟩ ⟨w, hg⟩ ↦ ?_), ?_⟩
  · obtain ⟨x, hx⟩ := IsAlgClosed.exists_aeval_eq_zero
      (AlgebraicClosure F) _ (degree_pos_of_irreducible hu).ne'
    exact H x ⟨h.1, by simpa only [map_mul, hx, zero_mul] using congr(aeval x $hf)⟩
      x ⟨h.2, by simpa only [map_mul, hx, zero_mul] using congr(aeval x $hg)⟩ rfl
  rintro (⟨rfl, rfl⟩ | hc)
  · exact (h.1 rfl).elim
  rintro x hf _ hg rfl
  obtain ⟨u, v, hfg⟩ := hc
  simpa only [map_add, map_mul, map_one, hf.2, hg.2, mul_zero, add_zero,
    zero_ne_one] using congr(aeval x $hfg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7daa8503eeedcf4200b20ca5388abfd77f3d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
