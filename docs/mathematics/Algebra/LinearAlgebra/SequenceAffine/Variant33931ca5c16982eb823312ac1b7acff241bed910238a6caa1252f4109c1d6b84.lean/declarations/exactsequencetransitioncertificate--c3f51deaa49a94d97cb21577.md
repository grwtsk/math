# ExactSequenceTransitionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07f84fd51d0d9975dac14ee95064c6ce07618d8ab5685a33e67fc1291e309976",
  "kind": "structure",
  "lexical_name": "ExactSequenceTransitionCertificate",
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
  "slug": "exactsequencetransitioncertificate--c3f51deaa49a94d97cb21577",
  "source": {
    "blob": "dbac838b2a62f212fe422c334303d2f0e4d514a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3f51deaa49a94d97cb215779e6f888ea16191d7db68424d0caa13705f930cc4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07f84fd51d0d9975dac14ee95064c6ce07618d8ab5685a33e67fc1291e309976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactSequenceTransitionCertificate
    (Digest : Type uDigest)
    (LayerId : Type uLayer)
    (TokenId : Type uToken) where
  layer : LayerId
  token : TokenId
  transition : AffineTransition R S
  inputState : S
  outputState : S
  inputDigest : Digest
  outputDigest : Digest
  kernelDigest : Digest
  snapshotDigest : Digest
  exactReplay : transition inputState = outputState

/-- Sound enclosure receipt for one affine transition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SequenceAffine/Variant33931ca5c16982eb823312ac1b7acff241bed910238a6caa1252f4109c1d6b84.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbac838b2a62f212fe422c334303d2f0e4d514a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
