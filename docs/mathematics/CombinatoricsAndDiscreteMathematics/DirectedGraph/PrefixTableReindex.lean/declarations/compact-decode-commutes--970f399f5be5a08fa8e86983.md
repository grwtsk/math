# compact_decode_commutes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:560fd8cb-ca8c-e9a8-dbf4-5b3867e79531",
  "kind": "theorem",
  "lexical_name": "compact_decode_commutes",
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
  "slug": "compact-decode-commutes--970f399f5be5a08fa8e86983",
  "source": {
    "blob": "e43cf48d7486b9484000da41e1ce545e21de69f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 240,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:970f399f5be5a08fa8e869836f69058ecc0ad96701afd0a57092e64363bc67e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560fd8cb-ca8c-e9a8-dbf4-5b3867e79531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_decode_commutes (hinjective : Function.Injective translation.index)
    (state : State (Vertex old role) Key) (hstate : WellFormed state) :
    PrefixTableState.decode
        (transport translation role (PrefixTableCompaction.compact state hstate)) =
      PrefixTableState.decode (PrefixTableCompaction.compact (transport translation role state)
        (transport_wellFormed translation role hinjective state hstate)) := by
  rw [decode_transport translation role hinjective _
      (PrefixTableCompaction.compact_wellFormed state hstate),
    PrefixTableCompaction.decode_compact, PrefixTableCompaction.decode_compact,
    decode_transport translation role hinjective state hstate]

omit [DecidableEq (EdgeTrace.TotalEdge (Vertex old role))]
  [DecidableEq (EdgeTrace.TotalEdge (Vertex new role))] in
/-- The actual bijective inverse reconstructs full old typed edges, including their identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e43cf48d7486b9484000da41e1ce545e21de69f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
