# frame_minor_eq_decoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:815aba90-ea44-1d2b-547c-92d8111c7c82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d6208c9-16d1-46bc-97b6-b03a7820ad36",
  "kind": "theorem",
  "lexical_name": "frame_minor_eq_decoded",
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
  "slug": "frame-minor-eq-decoded--680752b2315cec168eeffafc",
  "source": {
    "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 296,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:680752b2315cec168eeffafc7b3d9ed2399d4f9cb0d5fcf9e3452bfff5ca2c44",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d6208c9-16d1-46bc-97b6-b03a7820ad36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_minor_eq_decoded {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ)
    (S : Fin N ↪o Fin (N + N)) :
    orderedMinor (SignedGraph.frame M) S = (decodeSelection N N S).value M := by
  rw [orderedMinor, frame_minor_eq_augment]
  exact augment_minor_eq_decoded N N M S

/-- One direction of the arbitrary-rank positivity transport, with no rank-two restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b57501d26aec3f258086dddf5d17632bd9d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
