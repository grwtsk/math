# canLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5047e8fcd8fe63688b632ea20022cd7d44f10879f8d781209e781a3a2cd3d2df",
  "kind": "instance",
  "lexical_name": "canLift",
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
  "slug": "canlift--87fff037c92e91ce17ff196a",
  "source": {
    "blob": "41be256ffc35ac9a899f9da3fa69f2a5089f9990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87fff037c92e91ce17ff196a4eba04624bdbc5fc2b1ead8dfd8620ff9f0c74e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5047e8fcd8fe63688b632ea20022cd7d44f10879f8d781209e781a3a2cd3d2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance canLift : CanLift (ConvexCone 𝕜 E) (PointedCone 𝕜 E) (↑) ConvexCone.Pointed where
  prf S hS := ⟨S.toPointedCone hS, rfl⟩

end Definitions

section Maps

variable [Semiring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜]
variable [AddCommMonoid E] [Module 𝕜 E]
variable [AddCommMonoid F] [Module 𝕜 F]
variable [AddCommMonoid G] [Module 𝕜 G]

/-!

## Maps between pointed cones

There is already a definition of maps between submodules, `Submodule.map`. In our case, these maps
are induced from linear maps between the ambient modules that are linear over nonnegative scalars.
Such maps are unlikely to be of any use in practice. So, we construct some API to define maps
between pointed cones induced from linear maps between the ambient modules that are linear over
*all* scalars.

-/

/-- The image of a pointed cone under a `𝕜`-linear map is a pointed cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variante047123e974d71fc515fe80d8a97813b8ddf66819139544ac8ba4264ca8bfb91.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41be256ffc35ac9a899f9da3fa69f2a5089f9990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
