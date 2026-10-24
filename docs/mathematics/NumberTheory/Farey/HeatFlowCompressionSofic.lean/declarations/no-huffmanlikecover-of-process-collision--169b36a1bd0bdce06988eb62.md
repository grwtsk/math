# no_huffmanLikeCover_of_process_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d38cc654-41e2-7e5d-2f06-63ef3f3876e9",
  "kind": "theorem",
  "lexical_name": "no_huffmanLikeCover_of_process_collision",
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
  "slug": "no-huffmanlikecover-of-process-collision--169b36a1bd0bdce06988eb62",
  "source": {
    "blob": "290757773fe6f295c025287d0d673d9d82c773df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:169b36a1bd0bdce06988eb62bbb460e352216127acbc23443122a605d3258155",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38cc654-41e2-7e5d-2f06-63ef3f3876e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_huffmanLikeCover_of_process_collision
    {X : Type u} {Trace : Type v} {Z : Type w}
    (process : X → Trace) (readout : X → Z)
    (x y : X)
    (hProcess : process x = process y)
    (hReadout : readout x ≠ readout y) :
    ¬ HuffmanLikeCover process := by
  intro hCover
  exact (not_factorsThrough_of_collision process readout x y hProcess hReadout)
    (readout_bound_to_process_of_huffmanLikeCover process hCover readout)

/-- A trace is presented through a chosen finite state profile. This is a
relative sofic interface: the finite state type and profile remain explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290757773fe6f295c025287d0d673d9d82c773df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
