# EncodingData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7c17a0859c65b1b7f2196e6155a36e33e958dfde64e091c63bdc24acb22aff2",
  "kind": "structure",
  "lexical_name": "EncodingData",
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
  "slug": "encodingdata--937e0c7070affcde9d760cb3",
  "source": {
    "blob": "326606182a7776b4b0164b77e99454f5848f9af3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 6,
    "path": "GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:937e0c7070affcde9d760cb31544dc5f7d817dbd7fea9a4e47fa77cea8d0f527",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7c17a0859c65b1b7f2196e6155a36e33e958dfde64e091c63bdc24acb22aff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EncodingData (s : ElementarySymbol) where
  arity : Nat
  tree : EMLTree arity
  n : Nat
  matrix : EMLCircuitMatrix arity n
  size : Nat
  depth : Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326606182a7776b4b0164b77e99454f5848f9af3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
