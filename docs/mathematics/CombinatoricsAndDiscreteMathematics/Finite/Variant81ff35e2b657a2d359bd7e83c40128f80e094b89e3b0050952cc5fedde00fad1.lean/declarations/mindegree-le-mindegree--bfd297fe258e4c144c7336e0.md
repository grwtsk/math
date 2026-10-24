# minDegree_le_minDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bed193d-c720-1f09-ab0b-2b826873ce9c",
  "kind": "lemma",
  "lexical_name": "minDegree_le_minDegree",
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
  "slug": "mindegree-le-mindegree--bfd297fe258e4c144c7336e0",
  "source": {
    "blob": "49408459ff9293c4d646682f3375c615babd73c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 343,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd297fe258e4c144c7336e06a3a32bb938beb879e1e39dd7358495aa90d3af7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bed193d-c720-1f09-ab0b-2b826873ce9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minDegree_le_minDegree {H : SimpleGraph V} [DecidableRel G.Adj] [DecidableRel H.Adj]
    (hle : G ≤ H) : G.minDegree ≤ H.minDegree := by
  by_cases hne : Nonempty V
  · apply le_minDegree_of_forall_le_degree
    exact fun v ↦ (G.minDegree_le_degree v).trans (G.degree_le_of_le hle)
  · rw [not_nonempty_iff] at hne
    simp

/-- The maximum degree of all vertices (and `0` if there are no vertices).
The key properties of this are given in `exists_maximal_degree_vertex`, `degree_le_maxDegree`
and `maxDegree_le_of_forall_degree_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49408459ff9293c4d646682f3375c615babd73c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
