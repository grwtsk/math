# SimpleFinitePoleDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d10c40485b48e6a0c49a12d0394800dd0bd23341a58c700c82ce6ae0f6e8358",
  "kind": "structure",
  "lexical_name": "SimpleFinitePoleDescriptor",
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
  "slug": "simplefinitepoledescriptor--ca620316d9b79a4bc536b5e9",
  "source": {
    "blob": "92a9566406a352a16d7170e76ba58cace0dc9cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimpleFinitePole/Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca620316d9b79a4bc536b5e9cddb9e0c163476e8c4e60cf6c492610e9250a235",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimpleFinitePole/Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d10c40485b48e6a0c49a12d0394800dd0bd23341a58c700c82ce6ae0f6e8358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SimpleFinitePoleDescriptor where
  poleName : String
  orderedStream : OrderedBinaryLogicMatrixStream
  poleOrder : Nat
  residueMatrix : SomeBinaryLogicMatrix
  defectResidues : List IntegrityDefect
  arithmeticDescriptor : FiniteArithmeticDescriptor
  noMeromorphicFunctionClaim : True
  noBSDClaim : True
  noCriticalLineClaim : True
  noDeBruijnNewmanDynamicsClaim : True
  claimBoundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimpleFinitePole/Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SimpleFinitePole/Variant9ecb46043cc619d871e65f30ad435d562a80b829c434b49525671a15b86f2e5f.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92a9566406a352a16d7170e76ba58cace0dc9cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
