# inhomogeneousCochains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c8eaf531b0b06269525811a9b32a708d869a6b6775e09b616190a83753108e6",
  "kind": "abbrev",
  "lexical_name": "inhomogeneousCochains",
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
  "slug": "inhomogeneouscochains--29ad5c35913e4e288040f380",
  "source": {
    "blob": "85f8e138c2384aea266695f5c55cc59d39a6870a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29ad5c35913e4e288040f3809573298e8c3668bc9e589098b7ca295a5acfb153",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c8eaf531b0b06269525811a9b32a708d869a6b6775e09b616190a83753108e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev inhomogeneousCochains : CochainComplex (ModuleCat k) ℕ :=
  CochainComplex.of (fun n => ModuleCat.of k ((Fin n → G) → A))
    (fun n => InhomogeneousCochains.d n A) fun n => by
/- Porting note: broken proof was
    ext x y
    have := LinearMap.ext_iff.1 ((linearYonedaObjResolution A).d_comp_d n (n + 1) (n + 2))
    simp only [ModuleCat.coe_comp, Function.comp_apply] at this
    simp only [ModuleCat.coe_comp, Function.comp_apply, d_eq, LinearEquiv.toModuleIso_hom,
      LinearEquiv.toModuleIso_inv, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply, this,
      LinearMap.zero_apply, map_zero, Pi.zero_apply] -/
    ext x
    have := LinearMap.ext_iff.1 ((linearYonedaObjResolution A).d_comp_d n (n + 1) (n + 2))
    simp only [ModuleCat.comp_def, LinearMap.comp_apply] at this
    dsimp only
    simp only [d_eq, LinearEquiv.toModuleIso_inv, LinearEquiv.toModuleIso_hom, ModuleCat.coe_comp,
      Function.comp_apply]
    /- Porting note: I can see I need to rewrite `LinearEquiv.coe_coe` twice to at
      least reduce the need for `symm_apply_apply` to be an `erw`. However, even `erw` refuses to
      rewrite the second `coe_coe`... -/
    erw [LinearEquiv.symm_apply_apply, this]
    exact map_zero _
#align group_cohomology.inhomogeneous_cochains GroupCohomology.inhomogeneousCochains

set_option maxHeartbeats 3200000 in
/-- Given a `k`-linear `G`-representation `A`, the complex of inhomogeneous cochains is isomorphic
to `Hom(P, A)`, where `P` is the standard resolution of `k` as a trivial `G`-representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85f8e138c2384aea266695f5c55cc59d39a6870a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
