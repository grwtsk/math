# DependencyBitfieldBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d1ea176f76dc36b39ac18acb8d86d1338b97fb260b5aa67d24710c914993030",
  "kind": "structure",
  "lexical_name": "DependencyBitfieldBasis",
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
  "slug": "dependencybitfieldbasis--7b83eeccbb8d7a9aefae1fb0",
  "source": {
    "blob": "e0d876a7bfc3b6bdfc950b7ca1a39efe5d404ba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b83eeccbb8d7a9aefae1fb0083c265b7803765f44b49c50ffb6347deca530f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d1ea176f76dc36b39ac18acb8d86d1338b97fb260b5aa67d24710c914993030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DependencyBitfieldBasis (moduleCount : Nat) where
  basisEpoch : Digest
  dependencyGraphDigest : Digest
  basisEpochValid : basisEpoch.Valid
  dependencyGraphDigestValid : dependencyGraphDigest.Valid
  moduleNameAt : Fin moduleCount → String
  moduleAt : Fin moduleCount → ModuleKey
  moduleKeyInjective : Function.Injective moduleAt
  certifiedAddressOf :
    Digest →
      Digest →
      (Fin moduleCount → String) →
      (Fin moduleCount → ModuleKey) →
      ObjectAddress
  objectAddress : ObjectAddress
  objectAddressBinding :
    objectAddress =
      certifiedAddressOf
        basisEpoch dependencyGraphDigest moduleNameAt moduleAt
  addressCertificate : ObjectAddress
  addressCertificatePredicate :
    ObjectAddress → ObjectAddress → Digest → Digest → Prop
  addressCertificateProof :
    addressCertificatePredicate
      addressCertificate objectAddress basisEpoch
      dependencyGraphDigest

/-- A dependency set whose basis and certification cannot be detached. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant2f41d769c3a628688c4300e7e8a39e50701e1d871567326bb415692e634d2326.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d876a7bfc3b6bdfc950b7ca1a39efe5d404ba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
