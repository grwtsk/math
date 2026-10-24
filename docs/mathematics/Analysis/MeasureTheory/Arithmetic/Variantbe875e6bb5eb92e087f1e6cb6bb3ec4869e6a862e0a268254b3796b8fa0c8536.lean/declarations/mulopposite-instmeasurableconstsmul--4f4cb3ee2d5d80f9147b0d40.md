# MulOpposite.instMeasurableConstSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829019908fa75b1622495125e95650c0e6555d5be1dffbf9cd14b46ef5ff91c9",
  "kind": "instance",
  "lexical_name": "MulOpposite.instMeasurableConstSMul",
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
  "slug": "mulopposite-instmeasurableconstsmul--4f4cb3ee2d5d80f9147b0d40",
  "source": {
    "blob": "516603bd32e805ef10c680232dc58ae149a32d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 585,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f4cb3ee2d5d80f9147b0d404b3de8bf9188f677db10f1cc294e1182c343a6d7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829019908fa75b1622495125e95650c0e6555d5be1dffbf9cd14b46ef5ff91c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec instance MulOpposite.instMeasurableConstSMul [SMul M α] [SMul Mᵐᵒᵖ α] [IsCentralScalar M α]
    [MeasurableConstSMul M α] : MeasurableConstSMul Mᵐᵒᵖ α where
  measurable_const_smul := by simpa using measurable_const_smul

end MeasurableConstSMul

variable [MeasurableSpace M]

@[to_additive (attr := fun_prop, aesop safe 20 apply (rule_sets := [Measurable]))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantbe875e6bb5eb92e087f1e6cb6bb3ec4869e6a862e0a268254b3796b8fa0c8536.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516603bd32e805ef10c680232dc58ae149a32d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
