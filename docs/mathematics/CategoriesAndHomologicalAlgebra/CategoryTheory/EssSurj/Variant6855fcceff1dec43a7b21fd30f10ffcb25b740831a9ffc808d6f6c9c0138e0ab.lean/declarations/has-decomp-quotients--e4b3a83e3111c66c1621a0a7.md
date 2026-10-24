# has_decomp_quotients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eabd6fb-9c70-b60a-b4ef-c84ff7e40e79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07e45034-122a-1cec-68b6-b7d4fc651134",
  "kind": "lemma",
  "lexical_name": "has_decomp_quotients",
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
  "slug": "has-decomp-quotients--e4b3a83e3111c66c1621a0a7",
  "source": {
    "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4b3a83e3111c66c1621a0a72f212e1be26469dc921db41ac8941b0ab058d637",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e45034-122a-1cec-68b6-b7d4fc651134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma has_decomp_quotients (X : Action FintypeCat G)
    [TopologicalSpace X.V] [DiscreteTopology X.V] [ContinuousSMul G X.V] :
    ∃ (ι : Type) (_ : Finite ι) (f : ι → OpenSubgroup (G)),
      Nonempty ((∐ fun i ↦ G ⧸ₐ (f i).toSubgroup) ≅ X) := by
  obtain ⟨ι, hf, f, u, hc⟩ := has_decomp_connected_components' X
  letI (i : ι) : TopologicalSpace (f i).V := ⊥
  haveI (i : ι) : DiscreteTopology (f i).V := ⟨rfl⟩
  have (i : ι) : ContinuousSMul G (f i).V := ContinuousSMul.mk <| by
    let r : f i ⟶ X := Sigma.ι f i ≫ u.hom
    let r'' (p : G × (f i).V) : G × X.V := (p.1, r.hom p.2)
    let q (p : G × X.V) : X.V := X.ρ p.1 p.2
    let q' (p : G × (f i).V) : (f i).V := (f i).ρ p.1 p.2
    have heq : q ∘ r'' = r.hom ∘ q' := by
      ext (p : G × (f i).V)
      exact (congr_fun (r.comm p.1) p.2).symm
    have hrinj : Function.Injective r.hom :=
      (ConcreteCategory.mono_iff_injective_of_preservesPullback r).mp <| mono_comp _ _
    let t₁ : TopologicalSpace (G × (f i).V) := inferInstance
    show @Continuous _ _ _ ⊥ q'
    have : TopologicalSpace.induced r.hom inferInstance = ⊥ := by
      rw [← le_bot_iff]
      exact fun s _ ↦ ⟨r.hom '' s, ⟨isOpen_discrete (r.hom '' s), Set.preimage_image_eq s hrinj⟩⟩
    rw [← this, continuous_induced_rng, ← heq]
    exact Continuous.comp continuous_smul (by fun_prop)
  have (i : ι) : ∃ (U : OpenSubgroup (G)), (Nonempty ((f i) ≅ G ⧸ₐ U.toSubgroup)) := by
    obtain ⟨(x : (f i).V)⟩ := nonempty_fiber_of_isConnected (forget₂ _ _) (f i)
    let U : OpenSubgroup (G) := ⟨MulAction.stabilizer (G) x, stabilizer_isOpen (G) x⟩
    letI : Fintype (G ⧸ MulAction.stabilizer (G) x) := fintypeQuotient U
    exact ⟨U, ⟨FintypeCat.isoQuotientStabilizerOfIsConnected (f i) x⟩⟩
  choose g ui using this
  exact ⟨ι, hf, g, ⟨(Sigma.mapIso (fun i ↦ (ui i).some)).symm ≪≫ u⟩⟩

/-- If `X` is connected and `x` is in the fiber of `X`, `F.obj X` is isomorphic
to the quotient of `Aut F` by the stabilizer of `x` as `Aut F`-sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `017cc222f3ec68007cfddfcd22d10a4b99e689a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
