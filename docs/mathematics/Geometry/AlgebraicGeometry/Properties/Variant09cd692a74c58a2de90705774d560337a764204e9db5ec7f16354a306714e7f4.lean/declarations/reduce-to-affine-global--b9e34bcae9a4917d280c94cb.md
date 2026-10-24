# reduce_to_affine_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed6d4a8066b68c57d9108f1b862dd6bff0a98774",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23529afb-3a36-66fe-b31a-6b2195ce02f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66909710-1dcf-4d5b-4703-f44286f06922",
  "kind": "theorem",
  "lexical_name": "reduce_to_affine_global",
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
  "slug": "reduce-to-affine-global--b9e34bcae9a4917d280c94cb",
  "source": {
    "blob": "ed6d4a8066b68c57d9108f1b862dd6bff0a98774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 124,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9e34bcae9a4917d280c94cb0e6e92357573a7f57128d1c6c87656def600fb3b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66909710-1dcf-4d5b-4703-f44286f06922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_to_affine_global (P : ∀ (X : Scheme) (_ : Opens X.carrier), Prop)
    (h₁ : ∀ (X : Scheme) (U : Opens X.carrier),
      (∀ x : U, ∃ (V : _) (_ : x.1 ∈ V) (_ : V ⟶ U), P X V) → P X U)
    (h₂ : ∀ {X Y} (f : X ⟶ Y) [hf : IsOpenImmersion f],
      ∃ (U : Set X.carrier) (V : Set Y.carrier) (hU : U = ⊤) (hV : V = Set.range f.1.base),
        P X ⟨U, hU.symm ▸ isOpen_univ⟩ → P Y ⟨V, hV.symm ▸ hf.base_open.open_range⟩)
    (h₃ : ∀ R : CommRingCat, P (Scheme.Spec.obj <| op R) ⊤) :
    ∀ (X : Scheme) (U : Opens X.carrier), P X U := by
  intro X U
  apply h₁
  intro x
  obtain ⟨_, ⟨j, rfl⟩, hx, i⟩ :=
    X.affineBasisCover_is_basis.exists_subset_of_mem_open (SetLike.mem_coe.2 x.prop) U.isOpen
  let U' : Opens _ := ⟨_, (X.affineBasisCover.IsOpen j).base_open.open_range⟩
  let i' : U' ⟶ U := homOfLE i
  refine' ⟨U', hx, i', _⟩
  obtain ⟨_, _, rfl, rfl, h₂'⟩ := h₂ (X.affineBasisCover.map j)
  apply h₂'
  apply h₃
#align algebraic_geometry.reduce_to_affine_global AlgebraicGeometry.reduce_to_affine_global

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed6d4a8066b68c57d9108f1b862dd6bff0a98774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
