# CanonicalFileReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27d9a7fb709f1caeb06fd28b19b5a55c4c3ef5275d36eea9f083c707c98a0365",
  "kind": "structure",
  "lexical_name": "CanonicalFileReceipt",
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
  "slug": "canonicalfilereceipt--ac64d5771a4570b039012216",
  "source": {
    "blob": "67a88325b4e8db4d5bab7e6d8e2ca9bf8432a958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC302c0c73a8ffb10/Variant6bab0aa01d27d335cdf635a7c7083aaa5d8875f11518915bac67fba8d2cc0785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac64d5771a4570b039012216385ebc5d512753bc64a1523dd5f8d42f932bab7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC302c0c73a8ffb10/Variant6bab0aa01d27d335cdf635a7c7083aaa5d8875f11518915bac67fba8d2cc0785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27d9a7fb709f1caeb06fd28b19b5a55c4c3ef5275d36eea9f083c707c98a0365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalFileReceipt where
  path : CanonicalPath
  digest : Digest
  sizeBytes : Nat
  deriving DecidableEq, Repr, Inhabited

namespace CanonicalFileReceipt

end CanonicalFileReceipt

namespace CanonicalPayloadReceipt

end CanonicalPayloadReceipt

namespace MerkleReceipt

end MerkleReceipt

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC302c0c73a8ffb10/Variant6bab0aa01d27d335cdf635a7c7083aaa5d8875f11518915bac67fba8d2cc0785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC302c0c73a8ffb10/Variant6bab0aa01d27d335cdf635a7c7083aaa5d8875f11518915bac67fba8d2cc0785.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a88325b4e8db4d5bab7e6d8e2ca9bf8432a958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
