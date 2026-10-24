# exists_lift_of_germInjective_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10863cea-f49b-ae67-e9ac-01e9ec079aa2",
  "kind": "lemma",
  "lexical_name": "exists_lift_of_germInjective_aux",
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
  "slug": "exists-lift-of-germinjective-aux--cfc042efc0e5306f9ad67854",
  "source": {
    "blob": "ef13b5ad96266265cbfea56ba0f7d68252c237ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 243,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc042efc0e5306f9ad67854830605cf1b1adeb29b71ebac9164cd073d5a73cb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10863cea-f49b-ae67-e9ac-01e9ec079aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma exists_lift_of_germInjective_aux {U : X.Opens} {x : X} (hxU)
    (φ : A ⟶ X.presheaf.stalk x) (φRA : R ⟶ A) (φRX : R ⟶ Γ(X, U))
    (hφRA : RingHom.FiniteType φRA.hom)
    (e : φRA ≫ φ = φRX ≫ X.presheaf.germ U x hxU) :
    ∃ (V : X.Opens) (hxV : x ∈ V),
      V ≤ U ∧ RingHom.range φ.hom ≤ RingHom.range (X.presheaf.germ V x hxV).hom := by
  letI := φRA.hom.toAlgebra
  obtain ⟨s, hs⟩ := hφRA
  choose W hxW f hf using fun t ↦ X.presheaf.germ_exist x (φ t)
  have H : x ∈ s.inf W ⊓ U := by
    rw [← SetLike.mem_coe, TopologicalSpace.Opens.coe_inf, TopologicalSpace.Opens.coe_finset_inf]
    exact ⟨by simpa using fun x _ ↦ hxW x, hxU⟩
  refine ⟨s.inf W ⊓ U, H, inf_le_right, ?_⟩
  letI := φRX.hom.toAlgebra
  letI := (φRX ≫ X.presheaf.germ U x hxU).hom.toAlgebra
  letI := (φRX ≫ X.presheaf.map (homOfLE (inf_le_right (a := s.inf W))).op).hom.toAlgebra
  let φ' : A →ₐ[R] X.presheaf.stalk x :=
    { φ.hom with commutes' := DFunLike.congr_fun (congr_arg CommRingCat.Hom.hom e) }
  let ψ : Γ(X, s.inf W ⊓ U) →ₐ[R] X.presheaf.stalk x :=
    { (X.presheaf.germ _ x H).hom with commutes' := fun x ↦ X.presheaf.germ_res_apply _ _ _ _ }
  show AlgHom.range φ' ≤ AlgHom.range ψ
  rw [← Algebra.map_top, ← hs, AlgHom.map_adjoin, Algebra.adjoin_le_iff]
  rintro _ ⟨i, hi, rfl : φ i = _⟩
  refine ⟨X.presheaf.map (homOfLE (inf_le_left.trans (Finset.inf_le hi))).op (f i), ?_⟩
  exact (X.presheaf.germ_res_apply _ _ _ _).trans (hf _)

/--
Suppose `X` is a scheme, `x : X` such that the germ map at `x` is (locally) injective,
and `U` is a neighborhood of `x`.
Given a commutative diagram of `CommRingCat`
```
R ⟶ Γ(X, U)
↓    ↓
A ⟶ 𝒪_{X, x}
```
such that `R` is of finite type over `A`, we may lift `A ⟶ 𝒪_{X, x}` to some `A ⟶ Γ(X, V)`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Variant8bfb273b185900873efab861d0e5744fe35b28a0754e955363470a04954ba2fd.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef13b5ad96266265cbfea56ba0f7d68252c237ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
