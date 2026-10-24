# isConnected_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a283104c9f084111ac29698aedecf184d32ce272",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f42f004-3993-4fd0-f809-41cce9594413",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b09c00e1-133b-53de-56b5-2f8e9347cae2",
  "kind": "theorem",
  "lexical_name": "isConnected_sphere",
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
  "slug": "isconnected-sphere--32a076f8451fd0fec6902b35",
  "source": {
    "blob": "a283104c9f084111ac29698aedecf184d32ce272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32a076f8451fd0fec6902b35e140c1f0448d5c17df5de5c9203dda335ce6e6d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b09c00e1-133b-53de-56b5-2f8e9347cae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConnected_sphere (h : 1 < Module.rank ℝ E) (x : E) {r : ℝ} (hr : 0 ≤ r) :
    IsConnected (sphere x r) :=
  (isPathConnected_sphere h x hr).isConnected

/-- In a real vector space of dimension `> 1`, any sphere is preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a283104c9f084111ac29698aedecf184d32ce272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
