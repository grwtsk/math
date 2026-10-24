# cylinder_mem_closedCompactCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c458d555d33554b5589653738b19ac75861cf9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2527c003-8084-b2b5-02cf-d84afcee175b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bdd98f3-de11-eaaf-6f18-e12cf5773765",
  "kind": "theorem",
  "lexical_name": "cylinder_mem_closedCompactCylinders",
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
  "slug": "cylinder-mem-closedcompactcylinders--00b3280e3c58e6df47ef4518",
  "source": {
    "blob": "6c458d555d33554b5589653738b19ac75861cf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b3280e3c58e6df47ef45180e4af5e371c2c2ff0bb76afb35db22143de29261",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bdd98f3-de11-eaaf-6f18-e12cf5773765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_mem_closedCompactCylinders (s : Finset ι) (S : Set (Π i : s, X i))
    (hS_closed : IsClosed S) (hS_compact : IsCompact S) :
    cylinder s S ∈ closedCompactCylinders X := by
  rw [mem_closedCompactCylinders]
  exact ⟨s, S, hS_closed, hS_compact, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variante89c30a612e69f4d9e6ca47e8fb7c14391fc7ece4c4460308da0068c7771d731.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c458d555d33554b5589653738b19ac75861cf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
