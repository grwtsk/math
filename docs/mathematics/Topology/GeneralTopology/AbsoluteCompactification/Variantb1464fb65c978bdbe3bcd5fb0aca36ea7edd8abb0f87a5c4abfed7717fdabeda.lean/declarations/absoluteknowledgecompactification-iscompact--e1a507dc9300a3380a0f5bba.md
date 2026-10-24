# absoluteKnowledgeCompactification_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac06c242-6ecb-7bf8-05e3-866b9719ecf0",
  "kind": "theorem",
  "lexical_name": "absoluteKnowledgeCompactification_isCompact",
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
  "slug": "absoluteknowledgecompactification-iscompact--e1a507dc9300a3380a0f5bba",
  "source": {
    "blob": "f5626481d1c8e45b51899c26e6b31908a7663a2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a507dc9300a3380a0f5bba74dacb19b9ab57d22253e1a9d3b96ac816018c9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac06c242-6ecb-7bf8-05e3-866b9719ecf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteKnowledgeCompactification_isCompact
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) :
    IsCompact (AbsoluteKnowledgeCompactification encode) := by
  exact isClosed_closure.isCompact

/--
A certified finite-stage incidence singleton belongs to the absolute
compactification under the canonical inclusion.  This is set membership, not
dynamical fixedness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5626481d1c8e45b51899c26e6b31908a7663a2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
