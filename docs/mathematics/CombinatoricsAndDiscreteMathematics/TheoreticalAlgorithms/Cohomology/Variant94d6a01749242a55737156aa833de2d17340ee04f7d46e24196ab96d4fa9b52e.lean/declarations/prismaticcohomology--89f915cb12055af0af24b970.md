# PrismaticCohomology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ea5bede768eb177f7dcc469174b1feb0d01c951ddf4f204e79e6194c97ff3fd",
  "kind": "structure",
  "lexical_name": "PrismaticCohomology",
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
  "slug": "prismaticcohomology--89f915cb12055af0af24b970",
  "source": {
    "blob": "29dcde2ee5cbaf3c6cb8522903296ccf501e7888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89f915cb12055af0af24b970d808d76e24b52788b7f47ff43205f1c30feda9b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ea5bede768eb177f7dcc469174b1feb0d01c951ddf4f204e79e6194c97ff3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticCohomology
    {p : Nat}
    (P : BoundedPrism.{u} p)
    (X : PadicFormalScheme) where
  RΓDelta : DerivedObject P.A
  ODelta_source : PrismaticSite P X
  ODelta_sheaf? : Option (CertifiedStructureSheafOfRings P X)
  ODeltaBar_sheaf? : Option (CertifiedStructureSheafOfRings P X)
  ODelta_pullbackSheaf? : Option (CertifiedPullbackStructureSheafOfRings P X)
  ODeltaBar_pullbackSheaf? :
    Option (CertifiedPullbackStructureSheafOfRings P X)
  frobenius : FrobeniusSemilinearEndomorphism RΓDelta
  base_change_map : BaseChangeMap RΓDelta
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cohomology/Variant94d6a01749242a55737156aa833de2d17340ee04f7d46e24196ab96d4fa9b52e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29dcde2ee5cbaf3c6cb8522903296ccf501e7888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
