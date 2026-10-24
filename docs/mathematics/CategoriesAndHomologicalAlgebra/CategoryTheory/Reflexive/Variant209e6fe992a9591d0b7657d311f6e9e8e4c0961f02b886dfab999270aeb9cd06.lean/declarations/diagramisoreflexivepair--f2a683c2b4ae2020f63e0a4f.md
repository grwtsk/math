# diagramIsoReflexivePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b540479a02f5bc526b785b2c8a4a13383aadee2da2ab23b474c66bb6e7d72d71",
  "kind": "def",
  "lexical_name": "diagramIsoReflexivePair",
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
  "slug": "diagramisoreflexivepair--f2a683c2b4ae2020f63e0a4f",
  "source": {
    "blob": "975fc126816a7cf6bcd130f7bc22490d9e3f9d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2a683c2b4ae2020f63e0a4f1e221fefe287bb574456b68491f4cbbef2fa0ebf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b540479a02f5bc526b785b2c8a4a13383aadee2da2ab23b474c66bb6e7d72d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagramIsoReflexivePair :
    F ≅ reflexivePair (F.map left) (F.map right) (F.map reflexion) :=
  mkNatIso (Iso.refl _) (Iso.refl _)

end NatIso

set_option backward.defeqAttrib.useBackward true in
/-- A `reflexivePair` composed with a functor is isomorphic to the `reflexivePair` obtained by
applying the functor at each map. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant209e6fe992a9591d0b7657d311f6e9e8e4c0961f02b886dfab999270aeb9cd06.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975fc126816a7cf6bcd130f7bc22490d9e3f9d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
