# HasCoveringExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d47b418507a52ce66bc59684a5c4e41bf86bf38083a526b5f2edd89d7ddc6401",
  "kind": "structure",
  "lexical_name": "HasCoveringExponent",
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
  "slug": "hascoveringexponent--534fef0c99f3f0bb7105b902",
  "source": {
    "blob": "e5163fc86b6b284a6b3053432a7b6c53f10e72ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 52,
    "path": "GRWTSK/Topology/MetricTopology/CoveringExponent/Variant510207beebfe4c2f78d676d5f0f7b4ab35bece8cf07ef9de56f1c04b0ad11f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:534fef0c99f3f0bb7105b902ef4ad2af54ec12356cf95c53dfe382269975d86b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringExponent/Variant510207beebfe4c2f78d676d5f0f7b4ab35bece8cf07ef9de56f1c04b0ad11f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d47b418507a52ce66bc59684a5c4e41bf86bf38083a526b5f2edd89d7ddc6401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HasCoveringExponent (A : Set T) (c : ℝ≥0∞) (d : ℝ) : Prop where
  ediam_lt_top : Metric.ediam A < ∞
  coveringNumber_le : ∀ ε : ℝ≥0, ε ≤ Metric.ediam A → coveringNumber ε A ≤ c * (ε : ℝ≥0∞)⁻¹ ^ d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringExponent/Variant510207beebfe4c2f78d676d5f0f7b4ab35bece8cf07ef9de56f1c04b0ad11f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringExponent/Variant510207beebfe4c2f78d676d5f0f7b4ab35bece8cf07ef9de56f1c04b0ad11f17.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5163fc86b6b284a6b3053432a7b6c53f10e72ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
