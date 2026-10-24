# topologicalClosure_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d26f0b85e48330185959ff5cda4c4f48aaa750c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22a805df-a198-7244-e435-ca8767735d7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3467458a-0a8d-e662-09bf-af2d1ab77e83",
  "kind": "theorem",
  "lexical_name": "topologicalClosure_minimal",
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
  "slug": "topologicalclosure-minimal--398102966635b6c5d14f913e",
  "source": {
    "blob": "d26f0b85e48330185959ff5cda4c4f48aaa750c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:398102966635b6c5d14f913ef622548169e01490dc7e524d5e65bf00f843f46d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3467458a-0a8d-e662-09bf-af2d1ab77e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topologicalClosure_minimal (s : NonUnitalSubalgebra R A) {t : NonUnitalSubalgebra R A}
    (h : s ≤ t) (ht : IsClosed (t : Set A)) : s.topologicalClosure ≤ t :=
  closure_minimal h ht

/-- If a non-unital subalgebra of a non-unital topological algebra is commutative, then so is its
topological closure.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26f0b85e48330185959ff5cda4c4f48aaa750c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
