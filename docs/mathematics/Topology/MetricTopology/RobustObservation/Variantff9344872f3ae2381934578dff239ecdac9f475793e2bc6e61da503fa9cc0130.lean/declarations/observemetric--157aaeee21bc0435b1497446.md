# observeMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d467d4a8f660c804c27af494c11c900f7c07d4c422abebbb6f46e1271d068952",
  "kind": "def",
  "lexical_name": "observeMetric",
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
  "slug": "observemetric--157aaeee21bc0435b1497446",
  "source": {
    "blob": "26af6344c0948062ea53e4966d8d4abf33188ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:157aaeee21bc0435b149744689775a898d7ee95f2715a6e0c4f3ec992547d801",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d467d4a8f660c804c27af494c11c900f7c07d4c422abebbb6f46e1271d068952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observeMetric
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    MetricIdentification X → Label :=
  Quotient.lift observation.observe
    (fun _ _ equal =>
      observation.zeroDistanceInvariant equal)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RobustObservation/Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26af6344c0948062ea53e4966d8d4abf33188ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
