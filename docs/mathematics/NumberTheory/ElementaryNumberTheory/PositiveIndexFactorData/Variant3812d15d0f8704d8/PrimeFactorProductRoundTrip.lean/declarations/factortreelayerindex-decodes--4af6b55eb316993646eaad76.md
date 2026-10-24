# factorTreeLayerIndex_decodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37b7add6-a8b5-0675-6268-3db6f06806d9",
  "kind": "theorem",
  "lexical_name": "factorTreeLayerIndex_decodes",
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
  "slug": "factortreelayerindex-decodes--4af6b55eb316993646eaad76",
  "source": {
    "blob": "b71eb946913080c87de7530d0509c267c339ff8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 44,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af6b55eb316993646eaad76d201da1ec4f2df592bb023a424c76ca137af1547",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37b7add6-a8b5-0675-6268-3db6f06806d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorTreeLayerIndex_decodes
    (i : FactorTreeLayerIndex) :
    NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  NumberTheory.factorProduct_factorization i.asPositiveNat


end GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PositiveIndexFactorData/Variant3812d15d0f8704d8/PrimeFactorProductRoundTrip.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71eb946913080c87de7530d0509c267c339ff8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
