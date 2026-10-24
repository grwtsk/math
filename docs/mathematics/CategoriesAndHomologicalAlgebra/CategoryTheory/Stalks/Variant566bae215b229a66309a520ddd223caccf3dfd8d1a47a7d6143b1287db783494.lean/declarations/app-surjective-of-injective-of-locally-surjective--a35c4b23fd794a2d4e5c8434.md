# app_surjective_of_injective_of_locally_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7053f96-eb65-b145-7172-700e1b596e45",
  "kind": "theorem",
  "lexical_name": "app_surjective_of_injective_of_locally_surjective",
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
  "slug": "app-surjective-of-injective-of-locally-surjective--a35c4b23fd794a2d4e5c8434",
  "source": {
    "blob": "0ec33ddcff63ecf8702fa7553958511a1dd4d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 596,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a35c4b23fd794a2d4e5c8434fb4f3c87314bc8039f18c28934fe6beeb1369075",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7053f96-eb65-b145-7172-700e1b596e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_surjective_of_injective_of_locally_surjective {F G : Sheaf C X} (f : F ⟶ G)
    (U : Opens X) (hinj : ∀ x ∈ U, Function.Injective ((stalkFunctor C x).map f.1))
    (hsurj : ∀ (t x) (_ : x ∈ U), ∃ (V : Opens X) (_ : x ∈ V) (iVU : V ⟶ U)
    (s : ToType (F.1.obj (op V))), f.1.app (op V) s = G.1.map iVU.op t) :
    Function.Surjective (f.1.app (op U)) := by
  conv at hsurj =>
    enter [t]
    rw [Subtype.forall' (p := (· ∈ U))]
  intro t
  -- We use the axiom of choice to pick around each point `x` an open neighborhood `V` and a
  -- preimage under `f` on `V`.
  choose V mV iVU sf heq using hsurj t
  -- These neighborhoods clearly cover all of `U`.
  have V_cover : U ≤ iSup V := by
    intro x hxU
    simp only [Opens.mem_iSup]
    exact ⟨⟨x, hxU⟩, mV ⟨x, hxU⟩⟩
  suffices IsCompatible F.obj V sf by
    -- Since `F` is a sheaf, we can glue all the local preimages together to get a global preimage.
    obtain ⟨s, s_spec, -⟩ := F.existsUnique_gluing' V U iVU V_cover sf this
    · use s
      apply G.eq_of_locally_eq' V U iVU V_cover
      intro x
      rw [← ConcreteCategory.comp_apply, ← f.1.naturality, ConcreteCategory.comp_apply, s_spec, heq]
  intro x y
  -- What's left to show here is that the sections `sf` are compatible, i.e. they agree on
  -- the intersections `V x ⊓ V y`. We prove this by showing that all germs are equal.
  apply section_ext
  intro z hz
  -- Here, we need to use injectivity of the stalk maps.
  apply hinj z ((iVU x).le ((inf_le_left : V x ⊓ V y ≤ V x) hz))
  rw [stalkFunctor_map_germ_apply, stalkFunctor_map_germ_apply]
  simp_rw [← ConcreteCategory.comp_apply, f.1.naturality, ConcreteCategory.comp_apply, heq,
    ← ConcreteCategory.comp_apply, ← G.1.map_comp]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec33ddcff63ecf8702fa7553958511a1dd4d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
