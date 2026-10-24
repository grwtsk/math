# uncurry_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35e63e66-ce45-b920-4070-c10868b46099",
  "kind": "theorem",
  "lexical_name": "uncurry_bind",
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
  "slug": "uncurry-bind--126b6d0b5ee2b348d46519d4",
  "source": {
    "blob": "eb07c06ae3668ccb5f1a32cf3bd053a9694a3e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 421,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:126b6d0b5ee2b348d46519d4117763fbcfcfe02be83df3ae6f4920cded7b5f8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35e63e66-ce45-b920-4070-c10868b46099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem uncurry_bind (t : ⦃Y : C⦄ → (f : Y ⟶ X) → s f → Presieve Y) :
    (s.bind t).uncurry = ⋃ i ∈ s.uncurry,
      Sigma.map id (fun Z g ↦ (g ≫ i.2 : Z ⟶ X)) '' (t i.2 ‹_›).uncurry := by
  ext ⟨Z, v⟩; simp only [Set.mem_iUnion, Set.mem_image]; constructor
  · rintro ⟨Y, g, f, hf, ht, hv⟩
    exact ⟨⟨_, f⟩, hf, ⟨_, g⟩, ht, Sigma.ext rfl (heq_of_eq hv)⟩
  · rintro ⟨⟨_, f⟩, hf, ⟨Y, g⟩, hg, h⟩
    rw [Sigma.ext_iff] at h
    obtain ⟨rfl, h⟩ := h
    rw [heq_iff_eq] at h; subst h
    exact ⟨_, _, _, _, hg, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb07c06ae3668ccb5f1a32cf3bd053a9694a3e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
