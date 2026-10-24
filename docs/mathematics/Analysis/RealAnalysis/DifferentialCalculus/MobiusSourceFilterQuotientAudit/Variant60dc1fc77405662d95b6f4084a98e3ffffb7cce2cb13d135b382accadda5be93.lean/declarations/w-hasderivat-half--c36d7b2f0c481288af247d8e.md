# W_hasDerivAt_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:044dbc0e-8e0c-9b56-eb31-468c40ba1a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96c55bd7-937c-9257-acca-0306a1bd8c31",
  "kind": "theorem",
  "lexical_name": "W_hasDerivAt_half",
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
  "slug": "w-hasderivat-half--c36d7b2f0c481288af247d8e",
  "source": {
    "blob": "8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36d7b2f0c481288af247d8e098343381488cc76a324ec43d16a2517b9b9d01d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c55bd7-937c-9257-acca-0306a1bd8c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem W_hasDerivAt_half : HasDerivAt W removedPoleValue (1 / 2) := by
  have he := ((hasDerivAt_id (1 / 2 : ℂ)).neg).cexp
  have h := he.mul V_hasDerivAt_positive_pole
  simpa only [W, removedPoleValue, V_positive_pole_zero, mul_zero, zero_add,
    id_eq, Pi.neg_apply] using! h

/-- The source derivative has the literal normalization and polynomial-exponential value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
