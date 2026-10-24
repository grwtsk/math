# cl_cl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d40ae4-1df3-00ed-a90f-71f804753c47",
  "kind": "theorem",
  "lexical_name": "cl_cl",
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
  "slug": "cl-cl--f9cb18f059b806bd171bbf1b",
  "source": {
    "blob": "93ccdd6ca6ea1828669ea04357e07436862f5849",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9cb18f059b806bd171bbf1bdfef44bb0a322deaedfef71cad7fe5b2b1f13e5e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d40ae4-1df3-00ed-a90f-71f804753c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cl_cl {X : Compactum} (A : Set X) : cl (cl A) ⊆ cl A := by
  rintro _ ⟨F, hF, rfl⟩
  -- Notation to be used in this proof.
  let fsu := Finset (Set (Ultrafilter X))
  let ssu := Set (Set (Ultrafilter X))
  let ι : fsu → ssu := fun x ↦ ↑x
  let C0 : ssu := { Z | ∃ B ∈ F, X.str ⁻¹' B = Z }
  let AA := { G : Ultrafilter X | A ∈ G }
  let C1 := insert AA C0
  let C2 := finiteInterClosure C1
  -- C0 is closed under intersections.
  have claim1 : ∀ (B) (_ : B ∈ C0) (C) (_ : C ∈ C0), B ∩ C ∈ C0 := by
    rintro B ⟨Q, hQ, rfl⟩ C ⟨R, hR, rfl⟩
    use Q ∩ R
    simp only [and_true, Set.preimage_inter]
    exact inter_sets _ hQ hR
  -- All sets in C0 are nonempty.
  have claim2 : ∀ B ∈ C0, Set.Nonempty B := by
    rintro B ⟨Q, hQ, rfl⟩
    obtain ⟨q⟩ := Filter.nonempty_of_mem hQ
    use X.incl q
    simpa
  -- The intersection of AA with every set in C0 is nonempty.
  have claim3 : ∀ B ∈ C0, (AA ∩ B).Nonempty := by
    rintro B ⟨Q, hQ, rfl⟩
    have : (Q ∩ cl A).Nonempty := Filter.nonempty_of_mem (inter_mem hQ hF)
    rcases this with ⟨q, hq1, P, hq2, hq3⟩
    refine ⟨P, hq2, ?_⟩
    rw [← hq3] at hq1
    simpa
  -- Suffices to show that the intersection of any finite subcollection of C1 is nonempty.
  suffices ∀ T : fsu, ι T ⊆ C1 → (⋂₀ ι T).Nonempty by
    obtain ⟨G, h1⟩ := exists_ultrafilter_of_finite_inter_nonempty _ this
    use X.join G
    have : G.map X.str = F := Ultrafilter.coe_le_coe.1 fun S hS => h1 (Or.inr ⟨S, hS, rfl⟩)
    rw [join_distrib, this]
    exact ⟨h1 (Or.inl rfl), rfl⟩
  -- C2 is closed under finite intersections (by construction!).
  have claim4 := finiteInterClosure_finiteInter C1
  -- C0 is closed under finite intersections by claim1.
  have claim5 : FiniteInter C0 := ⟨⟨_, univ_mem, Set.preimage_univ⟩, claim1⟩
  -- Every element of C2 is nonempty.
  have claim6 : ∀ P ∈ C2, (P : Set (Ultrafilter X)).Nonempty := by
    suffices ∀ P ∈ C2, P ∈ C0 ∨ ∃ Q ∈ C0, P = AA ∩ Q by
      intro P hP
      rcases this P hP with h | h
      · exact claim2 _ h
      · rcases h with ⟨Q, hQ, rfl⟩
        exact claim3 _ hQ
    intro P hP
    exact claim5.finiteInterClosure_insert _ hP
  intro T hT
  -- Suffices to show that the intersection of the T's is contained in C2.
  suffices ⋂₀ ι T ∈ C2 by exact claim6 _ this
  -- Finish
  apply claim4.finiteInter_mem T
  grw [← subset_finiteInterClosure, ← hT]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variant064649e58b6730f35b9b4bc0788bd4980524947c2f0e458230cfe46aea9eade8.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccdd6ca6ea1828669ea04357e07436862f5849` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
