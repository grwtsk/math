# BlockTriangular.add_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ef84dc-2cd7-8b68-5097-6cd0dfa747a0",
  "kind": "lemma",
  "lexical_name": "BlockTriangular.add_iff_right",
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
  "slug": "blocktriangular-add-iff-right--f674ec5dc907ecc8e571ea5b",
  "source": {
    "blob": "97a724930e365f533c97d633991cfcaea93f85d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f674ec5dc907ecc8e571ea5b1b0cc93c4dd71123832f660658d0939e531ab620",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0ef84dc-2cd7-8b68-5097-6cd0dfa747a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BlockTriangular.add_iff_right [AddGroup R] (hM : BlockTriangular M b) :
    BlockTriangular (M + N) b ↔ BlockTriangular N b := ⟨(by simpa using hM.neg.add ·), hM.add⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a724930e365f533c97d633991cfcaea93f85d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
