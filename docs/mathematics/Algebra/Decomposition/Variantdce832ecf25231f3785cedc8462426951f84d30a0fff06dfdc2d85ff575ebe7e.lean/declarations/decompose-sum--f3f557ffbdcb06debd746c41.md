# decompose_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64034b3346d5a30d836c33bfa85374deb12b667e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e2822ea-3ffa-ee8d-6696-0eedc67b943c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:714d3e26-23fc-44af-0b92-88b4f808c150",
  "kind": "theorem",
  "lexical_name": "decompose_sum",
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
  "slug": "decompose-sum--f3f557ffbdcb06debd746c41",
  "source": {
    "blob": "64034b3346d5a30d836c33bfa85374deb12b667e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 164,
    "path": "GRWTSK/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f557ffbdcb06debd746c41b95a000cccb945d01fbe4fb4a53d389da7c9a6e7",
  "verification": {
    "reference": "docs/verification/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:714d3e26-23fc-44af-0b92-88b4f808c150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decompose_sum {ι'} (s : Finset ι') (f : ι' → M) :
    decompose ℳ (∑ i in s, f i) = ∑ i in s, decompose ℳ (f i) :=
  map_sum (decomposeAddEquiv ℳ) f s
#align direct_sum.decompose_sum DirectSum.decompose_sum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Decomposition/Variantdce832ecf25231f3785cedc8462426951f84d30a0fff06dfdc2d85ff575ebe7e.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64034b3346d5a30d836c33bfa85374deb12b667e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
