# logarithmicLeadingErrorEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:757b56304033c6994f9babc7166ccfe5487b71df3cb93002d8e8f8c21f1609bd",
  "kind": "def",
  "lexical_name": "logarithmicLeadingErrorEnvelope",
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
  "slug": "logarithmicleadingerrorenvelope--2b2f43215d1f712466c95614",
  "source": {
    "blob": "176a2d291cbbd4db4b17ffb39dc30c53236d7c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b2f43215d1f712466c95614bc1305d122384ff1b07a14b6f2842996f771aa7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:757b56304033c6994f9babc7166ccfe5487b71df3cb93002d8e8f8c21f1609bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logarithmicLeadingErrorEnvelope (A : ℝ) : ℝ :=
  80 * |fullPositiveKappa 1| * ((Real.log A) ^ 2 / A) +
    (80 * |fullPositiveKappa 2| + (134 / 3 : ℝ) * |fullPositiveKappa 4|) *
      (Real.log A / A) + 20 * |fullPositiveKappa 3| * (1 / A)

/-- Every real floor scale retains the logarithmic majorant for its actual short error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `176a2d291cbbd4db4b17ffb39dc30c53236d7c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
