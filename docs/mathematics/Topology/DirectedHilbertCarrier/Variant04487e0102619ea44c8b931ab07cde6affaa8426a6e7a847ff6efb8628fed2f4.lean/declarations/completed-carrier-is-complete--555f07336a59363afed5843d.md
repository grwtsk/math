# completed_carrier_is_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bec7f14-c590-609b-a05c-d1e1a9057dc1",
  "kind": "theorem",
  "lexical_name": "completed_carrier_is_complete",
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
  "slug": "completed-carrier-is-complete--555f07336a59363afed5843d",
  "source": {
    "blob": "c0cf8b55add2fa05eb89f0462b87f2850a24f073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 44,
    "path": "GRWTSK/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:555f07336a59363afed5843da1d11dc6a3bfce1e6daf54fd93e8212347f46550",
  "verification": {
    "reference": "docs/verification/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bec7f14-c590-609b-a05c-d1e1a9057dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_carrier_is_complete [CompleteSpace E] (frame : FrameIndex → E) :
    IsComplete (carrier frame : Set E) :=
  (completed_carrier_is_closed frame).isComplete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0cf8b55add2fa05eb89f0462b87f2850a24f073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
