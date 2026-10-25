# FiniteStratumSquareRootCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:893fa03aecff3f77db57def79f7fb2dd1573224ffe6b8b0993ecc2b2c2d4171e",
  "kind": "structure",
  "lexical_name": "FiniteStratumSquareRootCertificate",
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
  "slug": "finitestratumsquarerootcertificate--ed287fbe54cd2dc0004a6527",
  "source": {
    "blob": "da8206760485728318730b4416fca4b21908eebb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant481c37061e0b444ed50b9573d7a56659abb4b5cd85922c5e322c411295b8018e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed287fbe54cd2dc0004a6527552b5830158cefad28ebed7982eb904e963f94b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant481c37061e0b444ed50b9573d7a56659abb4b5cd85922c5e322c411295b8018e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:893fa03aecff3f77db57def79f7fb2dd1573224ffe6b8b0993ecc2b2c2d4171e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteStratumSquareRootCertificate where
  stratum : Nat
  unnormalizedDiscrepancy : Nat
  squareRootScale : Nat
  spectralMultiplicityScale : Nat
  bound :
    unnormalizedDiscrepancy ≤
      squareRootScale * spectralMultiplicityScale
  invariantBiasRemoved : Bool := true
  invariantBiasRemoved_exact :
    invariantBiasRemoved = true
  exactArithmeticCorrespondenceRef : String
  spectralBoundRef : String

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant481c37061e0b444ed50b9573d7a56659abb4b5cd85922c5e322c411295b8018e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteStratum/Variant481c37061e0b444ed50b9573d7a56659abb4b5cd85922c5e322c411295b8018e.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8206760485728318730b4416fca4b21908eebb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
