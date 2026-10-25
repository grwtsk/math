# sourceRelativeScalar_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e997c28046ea5d0c9255d19f17146e85206852f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d1852a6-eac8-13ee-0dc1-d5bda33eae55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f018ee7-6ffd-643d-1ba7-9bbf1d0bd088",
  "kind": "theorem",
  "lexical_name": "sourceRelativeScalar_val",
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
  "slug": "sourcerelativescalar-val--a6d63f1deab79b64d7155000",
  "source": {
    "blob": "e997c28046ea5d0c9255d19f17146e85206852f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d63f1deab79b64d7155000a49fbfe0124d927c1e10b0aa5a85cb3b6eb9088a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f018ee7-6ffd-643d-1ba7-9bbf1d0bd088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceRelativeScalar_val
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    (sourceRelativeScalar target : Real) =
      BitMatrix.Topology.designatedCantorScalar
        (BitMatrix.Carrier.discrepancy
          BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
          BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target) := by
  change ((show BitMatrix.Topology.ExactCantorScalar from
    BitMatrix.Topology.analyticCantorRepresentation.theta
      (BitMatrix.Carrier.discrepancy
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target)) : Real) = _
  exact BitMatrix.Topology.analyticCantorRepresentation_theta_val _

/-- Decoding the exact source-relative scalar reconstructs every target state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coverage/Variant340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e997c28046ea5d0c9255d19f17146e85206852f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
