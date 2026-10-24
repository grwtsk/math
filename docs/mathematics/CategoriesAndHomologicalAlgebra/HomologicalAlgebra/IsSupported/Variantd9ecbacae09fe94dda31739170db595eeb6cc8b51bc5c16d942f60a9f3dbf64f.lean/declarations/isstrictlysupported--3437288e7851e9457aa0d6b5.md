# IsStrictlySupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe190113b6747eef683d4825823fb1809b7e69d9baa7ad1b169d96761402a7b7",
  "kind": "class",
  "lexical_name": "IsStrictlySupported",
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
  "slug": "isstrictlysupported--3437288e7851e9457aa0d6b5",
  "source": {
    "blob": "5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3437288e7851e9457aa0d6b59cc534c8b3758fb76cfecd689ac866239942c2ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe190113b6747eef683d4825823fb1809b7e69d9baa7ad1b169d96761402a7b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStrictlySupported : Prop where
  isZero (i' : ι') (hi' : ∀ i, e.f i ≠ i') : IsZero (K.X i')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
