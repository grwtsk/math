# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fbe25d230f53366c4036b2f576dd93dd0a42d3da478d00a06c1d5f313fc44da",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1ec93a6d1ed38ca37aec3459",
  "source": {
    "blob": "de848d9cbf352a315169c27a3f3dc773368c9879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ec93a6d1ed38ca37aec3459c67bb9c182d3419dcebf4bc79eb7554e83ff7581",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fbe25d230f53366c4036b2f576dd93dd0a42d3da478d00a06c1d5f313fc44da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [FinitaryPreExtensive C] [Preregular C] : Precoherent C where
  pullback {B₁ B₂} f α _ X₁ π₁ h := by
    refine ⟨α, inferInstance, ?_⟩
    obtain ⟨Y, g, _, g', hg⟩ := Preregular.exists_fac f (Sigma.desc π₁)
    let X₂ := fun a ↦ pullback g' (Sigma.ι X₁ a)
    let π₂ := fun a ↦ pullback.fst g' (Sigma.ι X₁ a) ≫ g
    let π' := fun a ↦ pullback.fst g' (Sigma.ι X₁ a)
    have _ := FinitaryPreExtensive.sigma_desc_iso (fun a ↦ Sigma.ι X₁ a) g' inferInstance
    refine ⟨X₂, π₂, ?_, ?_⟩
    · have : (Sigma.desc π' ≫ g) = Sigma.desc π₂ := by ext; simp [π₂, π']
      rw [← effectiveEpi_desc_iff_effectiveEpiFamily, ← this]
      infer_instance
    · refine ⟨id, fun b ↦ pullback.snd _ _, fun b ↦ ?_⟩
      simp only [X₂, π₂, id_eq, Category.assoc, ← hg]
      rw [← Category.assoc, pullback.condition]
      simp

/-- The union of the extensive and regular coverages generates the coherent topology on `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comparison/Variant031ceca940177a7e7c04f7d4fe67fc6d63209d94ee01575ae68500f9a43ca0b8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de848d9cbf352a315169c27a3f3dc773368c9879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
