# farFromTriangleFree_graph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b72e0ae-f3ef-4fe0-b068-99077b355a9c",
  "kind": "lemma",
  "lexical_name": "farFromTriangleFree_graph",
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
  "slug": "farfromtrianglefree-graph--96445bea793881cb41bd4d45",
  "source": {
    "blob": "61b864640791ebb4661a1330ddc564dbb0df1380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96445bea793881cb41bd4d45caf524b085a783d2fdc74c9b0339882f1824e333",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b72e0ae-f3ef-4fe0-b068-99077b355a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma farFromTriangleFree_graph [Fintype G] [DecidableEq G] (hε : ε * card G ^ 2 ≤ #A) :
    (graph <| triangleIndices A).FarFromTriangleFree (ε / 9) := by
  refine farFromTriangleFree _ ?_
  simp_rw [card_triangleIndices, mul_comm_div, Nat.cast_pow, Nat.cast_add]
  ring_nf
  simpa only [mul_comm] using hε

end Corners

variable [Fintype G]

open Corners


/-- An explicit form for the constant in the corners theorem.

Note that this depends on `SzemerediRegularity.bound`, which is a tower-type exponential. This means
`cornersTheoremBound` is in practice absolutely tiny. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b864640791ebb4661a1330ddc564dbb0df1380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
