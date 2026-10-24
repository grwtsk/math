# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "913e2c3fddd3feddc0ad69d1d5b3b1bb7a18674f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/Interfaces/PortFiberLineBundle.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1d01164-13d3-0547-29cd-8441837bcb79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a60a2ab0-b3f5-7312-e190-d31d9ea6963d",
  "kind": "theorem",
  "lexical_name": "addedClaim_proof",
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
  "slug": "addedclaim-proof--17864531aa7d759d3d570a7b",
  "source": {
    "blob": "913e2c3fddd3feddc0ad69d1d5b3b1bb7a18674f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 61,
    "path": "GRWTSK/Interfaces/PortFiberLineBundle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17864531aa7d759d3d570a7be088738af65c5e7acbc781c3ff3c1b419b7a0d15",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberLineBundle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a60a2ab0-b3f5-7312-e190-d31d9ea6963d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | overlapInvertibility =>
      intro ι D C i j x hi hj
      exact C.scalar_ne_zero i j x hi hj
  | bundleTopology =>
      intro ι D C hOpen
      exact ⟨C.projection_continuous hOpen, C.projection_isOpenMap hOpen⟩
  | sectionRealization =>
      intro ι D C hOpen
      exact ⟨⟨sectionEquiv C hOpen⟩, fun s => s.continuous_totalSection⟩
  | operatorDescent =>
      intro ι D C hOpen A i x hi a
      exact A.coordinate_descend hOpen i x hi a
  | operatorComposition =>
      intro ι D C hOpen A B x
      exact A.descend_comp B hOpen x
  | holomorphicMultiplication =>
      intro ι D C f
      exact CompatibleOperators.multiplication_preservesHolomorphy (C := C) f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberLineBundle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberLineBundle.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `913e2c3fddd3feddc0ad69d1d5b3b1bb7a18674f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
