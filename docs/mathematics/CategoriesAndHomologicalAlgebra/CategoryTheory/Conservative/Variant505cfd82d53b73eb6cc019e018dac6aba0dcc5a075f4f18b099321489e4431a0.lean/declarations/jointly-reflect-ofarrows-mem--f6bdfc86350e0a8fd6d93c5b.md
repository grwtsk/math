# jointly_reflect_ofArrows_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f29a7e9-9d3e-430c-8894-d76fa7c9a901",
  "kind": "lemma",
  "lexical_name": "jointly_reflect_ofArrows_mem",
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
  "slug": "jointly-reflect-ofarrows-mem--f6bdfc86350e0a8fd6d93c5b",
  "source": {
    "blob": "c2443fcc5ef982dece8a6ae189b59b698facfca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6bdfc86350e0a8fd6d93c5b353baaa2ae20fd203ddb7f0fdf131840d840fd00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f29a7e9-9d3e-430c-8894-d76fa7c9a901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jointly_reflect_ofArrows_mem
    [HasSheafify J (Type w)] [J.WEqualsLocallyBijective (Type w)]
    (hP : P.IsConservativeFamilyOfPoints)
    {X : C} {ι : Type*} [Small.{w} ι] {U : ι → C} (f : ∀ i, U i ⟶ X) :
    Sieve.ofArrows _ f ∈ J X ↔
      ∀ (Φ : P.FullSubcategory) (x : Φ.obj.fiber.obj X),
        ∃ (i : ι) (y : Φ.obj.fiber.obj (U i)), Φ.obj.fiber.map (f i) y = x := by
  refine ⟨fun hf Φ x ↦ ?_, fun hf ↦ ?_⟩
  · obtain ⟨Z, _, ⟨_, p, _, ⟨i⟩, rfl⟩, z, rfl⟩ := Φ.obj.jointly_surjective _ hf x
    exact ⟨i, Φ.obj.fiber.map p z, by simp⟩
  · rw [J.ofArrows_mem_iff_isLocallySurjective_sigmaDesc_shrinkYoneda_map]
    refine hP.jointly_reflect_isLocallySurjective _ (fun Φ x ↦ ?_)
    obtain ⟨x, rfl⟩ := (Φ.obj.shrinkYonedaCompPresheafFiberIso.app X).toEquiv.symm.surjective x
    obtain ⟨i, y, rfl⟩ := hf Φ x
    refine ⟨Φ.obj.presheafFiber.map (Sigma.ι (fun i ↦ shrinkYoneda.{w}.obj (U i)) i)
      (Φ.obj.shrinkYonedaCompPresheafFiberIso.inv.app _ y), ?_⟩
    have := ConcreteCategory.congr_hom
      (Φ.obj.shrinkYonedaCompPresheafFiberIso.inv.naturality (f i)) y
    dsimp at this ⊢
    rw [this, ← Sigma.ι_comp_desc (fun i ↦ shrinkYoneda.{w}.map (f i)) i, Functor.map_comp]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conservative/Variant505cfd82d53b73eb6cc019e018dac6aba0dcc5a075f4f18b099321489e4431a0.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2443fcc5ef982dece8a6ae189b59b698facfca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
