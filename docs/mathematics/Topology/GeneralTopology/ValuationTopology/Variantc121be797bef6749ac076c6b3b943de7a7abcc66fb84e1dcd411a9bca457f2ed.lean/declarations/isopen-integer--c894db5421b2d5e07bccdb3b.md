# isOpen_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84e6cc0e-b4ef-f384-cb26-039d8a75c20b",
  "kind": "theorem",
  "lexical_name": "isOpen_integer",
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
  "slug": "isopen-integer--c894db5421b2d5e07bccdb3b",
  "source": {
    "blob": "5567be2aba293aaba62fe06477ad582ed2172e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c894db5421b2d5e07bccdb3be934d7dc05c49ec16df3abfab93aeb47d5ca5528",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e6cc0e-b4ef-f384-cb26-039d8a75c20b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_integer : IsOpen (_i.v.integer : Set R) := by
  simp only [integer, Subring.coe_set_mk, Subsemiring.coe_set_mk, Submonoid.coe_set_mk,
    Subsemigroup.coe_set_mk, ← v.restrict_le_one_iff]
  exact isOpen_closedBall _ one_ne_zero

/-- The closed unit ball of a valued ring is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variantc121be797bef6749ac076c6b3b943de7a7abcc66fb84e1dcd411a9bca457f2ed.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5567be2aba293aaba62fe06477ad582ed2172e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
