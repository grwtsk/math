# index_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d74fbc7-b562-7944-0b59-c9c34cb1c2cf",
  "kind": "theorem",
  "lexical_name": "index_countable",
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
  "slug": "index-countable--718583e3aed9ee093aa95d7e",
  "source": {
    "blob": "125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:718583e3aed9ee093aa95d7e29452e8049b98dfe67ccd3ef3fe30dd7b9b11405",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d74fbc7-b562-7944-0b59-c9c34cb1c2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_countable [SecondCountableTopology X] : h.index.Countable :=
  h.covering_disjoint.countable_of_nonempty_interior fun _ hx =>
    v.nonempty_interior _ _ (h.covering_mem_family hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
