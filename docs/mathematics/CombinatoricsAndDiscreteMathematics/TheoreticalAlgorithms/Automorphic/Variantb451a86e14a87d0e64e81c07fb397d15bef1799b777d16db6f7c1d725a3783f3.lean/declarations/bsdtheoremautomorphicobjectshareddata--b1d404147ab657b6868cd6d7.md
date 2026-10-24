# BSDTheoremAutomorphicObjectSharedData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:225ebc90a1d9d53c9faf4cfc88b373ff63033afab7323bd80edf76f948b561c5",
  "kind": "structure",
  "lexical_name": "BSDTheoremAutomorphicObjectSharedData",
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
  "slug": "bsdtheoremautomorphicobjectshareddata--b1d404147ab657b6868cd6d7",
  "source": {
    "blob": "d787c6d5bd3380e12fe93cf89ae077824f458a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 397,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1d404147ab657b6868cd6d7e6b5450a814db4a2a134e66c3e29d1d60c5a98f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:225ebc90a1d9d53c9faf4cfc88b373ff63033afab7323bd80edf76f948b561c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAutomorphicObjectSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP)
    (O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L AP) where
  scopeCompatibility :
    HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP
  scopeCompatibility_eq :
    scopeCompatibility = SC
  objectDescriptor :
    AutomorphicLFunctionObjectDescriptor N P L AP.scope
  objectDescriptor_eq :
    objectDescriptor = O.objectDescriptor
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  descriptorScopeSupport_eq :
    objectDescriptor.scopeSupport = O.scopeCompatibility.scopeSupport
  descriptorScope_eq :
    objectDescriptor.scopeSupport.scopeTheoremData.theoremScope = AP.scope
  objectKind :
    AutomorphicObjectKind
  objectKind_eq :
    objectKind = objectDescriptor.objectKind
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d787c6d5bd3380e12fe93cf89ae077824f458a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
