# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6644ddcd4cd20f2a559ba0433878272b27a11e9d616dbc2b2998c29380726adc",
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
  "slug": "instance--01e279efef7eec38c35f5fb1",
  "source": {
    "blob": "9232e8aeda25ca6688680dc7c0e40ba84fad90ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01e279efef7eec38c35f5fb106a8f456c9bfa20a9197443464b6235f3935ae9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6644ddcd4cd20f2a559ba0433878272b27a11e9d616dbc2b2998c29380726adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [F.IsTriangulated] :
    PreservesLimitsOfShape (Discrete WalkingPair) F := by
  suffices ∀ (X₁ X₃ : C), IsIso (prodComparison F X₁ X₃) by
    have := fun (X₁ X₃ : C) ↦ PreservesLimitPair.of_iso_prod_comparison F X₁ X₃
    exact ⟨fun {K} ↦ preservesLimit_of_iso_diagram F (diagramIsoPair K).symm⟩
  intro X₁ X₃
  let φ : F.mapTriangle.obj (binaryProductTriangle X₁ X₃) ⟶
      binaryProductTriangle (F.obj X₁) (F.obj X₃) :=
    { hom₁ := 𝟙 _
      hom₂ := prodComparison F X₁ X₃
      hom₃ := 𝟙 _
      comm₁ := by
        dsimp
        ext
        · simp only [assoc, prodComparison_fst, prod.comp_lift, comp_id, comp_zero,
            limit.lift_π, BinaryFan.mk_pt, BinaryFan.π_app_left, BinaryFan.mk_fst,
            ← F.map_comp, F.map_id]
        · simp only [assoc, prodComparison_snd, prod.comp_lift, comp_id, comp_zero,
            limit.lift_π, BinaryFan.mk_pt, BinaryFan.π_app_right, BinaryFan.mk_snd,
            ← F.map_comp, F.map_zero]
      comm₂ := by simp
      comm₃ := by simp }
  exact isIso₂_of_isIso₁₃ φ (F.map_distinguished _ (binaryProductTriangle_distinguished X₁ X₃))
    (binaryProductTriangle_distinguished _ _)
    (by dsimp [φ]; infer_instance) (by dsimp [φ]; infer_instance)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant34ab77d6f9e173fbb8c2fcde881c02880d62c0ef21802ed85f45d9927d9395a3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9232e8aeda25ca6688680dc7c0e40ba84fad90ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
