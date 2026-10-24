# TwistedBocksteinPhase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd20b8706ad5b82c47015359d35fd8ec12871c833c6e6d1ba8d12a9c3ac3a075",
  "kind": "structure",
  "lexical_name": "TwistedBocksteinPhase",
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
  "slug": "twistedbocksteinphase--561151cce493fb63f32d0662",
  "source": {
    "blob": "2d661ced6577772792c2c2aab26369b9b9bf3c8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 26,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TwistedBockstein/Variantb4e4d5d9a6c1cd6b3ddf7b609e85fea0b6b93ab2e792727e8ea04f19a2a8e314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:561151cce493fb63f32d066282f9fe2c9fe1a799239e208ccc142f5be80c2590",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TwistedBockstein/Variantb4e4d5d9a6c1cd6b3ddf7b609e85fea0b6b93ab2e792727e8ea04f19a2a8e314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd20b8706ad5b82c47015359d35fd8ec12871c833c6e6d1ba8d12a9c3ac3a075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TwistedBocksteinPhase
    (ContinuousTwistedTorus : Type u)
    (TwistedPhase : Type v)
    (NextRealizationKernel : Type w)
    [AddCommGroup ContinuousTwistedTorus]
    [AddCommGroup TwistedPhase]
    [AddCommGroup NextRealizationKernel] where
  degree : Nat
  localSystemDigest : Digest
  extension :
    BocksteinExtension
      ContinuousTwistedTorus TwistedPhase NextRealizationKernel
  integralToRealKernelDigest : Digest
  coefficientSequenceCertificate : ObjectAddress
  trivialRankOneSpecialization :
    Option ObjectAddress

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TwistedBockstein/Variantb4e4d5d9a6c1cd6b3ddf7b609e85fea0b6b93ab2e792727e8ea04f19a2a8e314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TwistedBockstein/Variantb4e4d5d9a6c1cd6b3ddf7b609e85fea0b6b93ab2e792727e8ea04f19a2a8e314.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d661ced6577772792c2c2aab26369b9b9bf3c8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
