# isLocallyNoetherian_iff_of_affine_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d17319-a47d-bb19-bbd8-0274ea2289b9",
  "kind": "theorem",
  "lexical_name": "isLocallyNoetherian_iff_of_affine_openCover",
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
  "slug": "islocallynoetherian-iff-of-affine-opencover--e5459a63d994b0076e19c120",
  "source": {
    "blob": "9ad5d0f006f205a8fd19b802e6f44e577cd60954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 135,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5459a63d994b0076e19c120649a64afa5fec1a1f5bb9de34290fe98a9debd06",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d17319-a47d-bb19-bbd8-0274ea2289b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocallyNoetherian_iff_of_affine_openCover (𝒰 : Scheme.OpenCover.{v, u} X)
    [∀ i, IsAffine (𝒰.obj i)] :
    IsLocallyNoetherian X ↔ ∀ (i : 𝒰.J), IsNoetherianRing Γ(𝒰.obj i, ⊤) := by
  constructor
  · intro h i
    let U := Scheme.Hom.opensRange (𝒰.map i)
    have := h.component_noetherian ⟨U, isAffineOpen_opensRange _⟩
    apply isNoetherianRing_of_ringEquiv (R := Γ(X, U))
    apply CategoryTheory.Iso.commRingCatIsoToRingEquiv
    exact (IsOpenImmersion.ΓIsoTop (𝒰.map i)).symm
  · intro hCNoeth
    let fS i : X.affineOpens := ⟨Scheme.Hom.opensRange (𝒰.map i), isAffineOpen_opensRange _⟩
    apply isLocallyNoetherian_of_affine_cover (S := fS)
    · rw [← Scheme.OpenCover.iSup_opensRange 𝒰]
    intro i
    apply isNoetherianRing_of_ringEquiv (R := Γ(𝒰.obj i, ⊤))
    apply CategoryTheory.Iso.commRingCatIsoToRingEquiv
    exact IsOpenImmersion.ΓIsoTop (𝒰.map i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variantb620b43c2ca7688c8f6a2d4cc7c9c5dc7712b85ec60b0a6ff7ba21af57cc4b08.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ad5d0f006f205a8fd19b802e6f44e577cd60954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
