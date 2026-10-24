# isTopologicalBasis_cofiltered_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:773fc4d6-c923-4d80-43b2-4683469f402f",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis_cofiltered_limit",
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
  "slug": "istopologicalbasis-cofiltered-limit--249ab1b1b9af19a25e8f1681",
  "source": {
    "blob": "87b9d391881825f9c9c7d57f0a90b1741f0aeb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 51,
    "path": "GRWTSK/Topology/Cofiltered/Variantb021f7c899b1f15a39a2b3c56580c789db4a3a7ac1106a4ee1fdad760f9b2525.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:249ab1b1b9af19a25e8f1681600e95bab3fbc0ee4380e89abe62ef62e2cf6ec4",
  "verification": {
    "reference": "docs/verification/Topology/Cofiltered/Variantb021f7c899b1f15a39a2b3c56580c789db4a3a7ac1106a4ee1fdad760f9b2525.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773fc4d6-c923-4d80-43b2-4683469f402f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalBasis_cofiltered_limit (hC : IsLimit C) (T : ∀ j, Set (Set (F.obj j)))
    (hT : ∀ j, IsTopologicalBasis (T j)) (univ : ∀ i : J, Set.univ ∈ T i)
    (inter : ∀ (i) (U1 U2 : Set (F.obj i)), U1 ∈ T i → U2 ∈ T i → U1 ∩ U2 ∈ T i)
    (compat : ∀ (i j : J) (f : i ⟶ j) (V : Set (F.obj j)) (_hV : V ∈ T j), F.map f ⁻¹' V ∈ T i) :
    IsTopologicalBasis
      {U : Set C.pt | ∃ (j : _) (V : Set (F.obj j)), V ∈ T j ∧ U = C.π.app j ⁻¹' V} := by
  classical
  convert! IsTopologicalBasis.iInf_induced hT fun j (x : C.pt) => C.π.app j x using 1
  · exact induced_of_isLimit C hC
  ext U0
  constructor
  · rintro ⟨j, V, hV, rfl⟩
    let U : ∀ i, Set (F.obj i) := fun i => if h : i = j then by rw [h]; exact V else Set.univ
    refine ⟨U, {j}, ?_, ?_⟩
    · simp only [Finset.mem_singleton]
      rintro i rfl
      simpa [U]
    · simp [U]
  · rintro ⟨U, G, h1, h2⟩
    obtain ⟨j, hj⟩ := IsCofiltered.inf_objs_exists G
    let g : ∀ e ∈ G, j ⟶ e := fun _ he => (hj he).some
    let Vs : J → Set (F.obj j) := fun e => if h : e ∈ G then F.map (g e h) ⁻¹' U e else Set.univ
    let V : Set (F.obj j) := ⋂ (e : J) (_he : e ∈ G), Vs e
    refine ⟨j, V, ?_, ?_⟩
    · -- An intermediate claim used to apply induction along `G : Finset J` later on.
      have :
        ∀ (S : Set (Set (F.obj j))) (E : Finset J) (P : J → Set (F.obj j)) (_univ : Set.univ ∈ S)
          (_inter : ∀ A B : Set (F.obj j), A ∈ S → B ∈ S → A ∩ B ∈ S)
          (_cond : ∀ (e : J) (_he : e ∈ E), P e ∈ S), (⋂ (e) (_he : e ∈ E), P e) ∈ S := by
        intro S E
        induction E using Finset.induction_on with
        | empty =>
          intro P he _hh
          simpa
        | insert a E _ha hh1 =>
          intro hh2 hh3 hh4 hh5
          rw [Finset.set_biInter_insert]
          refine hh4 _ _ (hh5 _ (Finset.mem_insert_self _ _)) (hh1 _ hh3 hh4 ?_)
          intro e he
          exact hh5 e (Finset.mem_insert_of_mem he)
      -- use the intermediate claim to finish off the goal using `univ` and `inter`.
      refine this _ _ _ (univ _) (inter _) ?_
      intro e he
      dsimp [Vs]
      rw [dite_eq_left he]
      exact compat j e (g e he) (U e) (h1 e he)
    · -- conclude...
      rw [h2]
      change _ = (C.π.app j) ⁻¹' ⋂ (e : J) (_ : e ∈ G), Vs e
      rw [Set.preimage_iInter]
      apply congrArg
      ext1 e
      rw [Set.preimage_iInter]
      apply congrArg
      ext1 he
      simp [Vs, dite_eq_left he, ← Set.preimage_comp, ← coe_comp]

end CofilteredLimit

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Cofiltered/Variantb021f7c899b1f15a39a2b3c56580c789db4a3a7ac1106a4ee1fdad760f9b2525.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Cofiltered/Variantb021f7c899b1f15a39a2b3c56580c789db4a3a7ac1106a4ee1fdad760f9b2525.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b9d391881825f9c9c7d57f0a90b1741f0aeb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
