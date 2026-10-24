# AdjacencyPolicy.adjacent_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed1cad43-f5cb-00d7-6354-cbff8592952f",
  "kind": "theorem",
  "lexical_name": "AdjacencyPolicy.adjacent_symmetric",
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
  "slug": "adjacencypolicy-adjacent-symmetric--8c4c833639dfefdf73763c5c",
  "source": {
    "blob": "2e8719571e064558551316fd60615e2bd214fbb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4c833639dfefdf73763c5c879c467b2450ba66b09a53af8c779b9c9f319d43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed1cad43-f5cb-00d7-6354-cbff8592952f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AdjacencyPolicy.adjacent_symmetric {rows columns : Nat}
    (policy : AdjacencyPolicy) {left right : GridCell rows columns} :
    policy.Adjacent left right ↔ policy.Adjacent right left := by
  cases policy
  · exact edgeAdjacent_symmetric
  · exact vertexAdjacent_symmetric

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8719571e064558551316fd60615e2bd214fbb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
