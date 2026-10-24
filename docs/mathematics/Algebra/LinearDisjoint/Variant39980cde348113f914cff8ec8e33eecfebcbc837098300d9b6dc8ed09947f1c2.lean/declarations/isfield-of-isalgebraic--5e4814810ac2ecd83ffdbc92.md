# isField_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "920e0027760d6d79581119139254f9c6a08848d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89be1809-061a-6206-5c57-907c0f6a7acc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c85fd7a-c9af-6aec-0f8b-fb330dfd24a1",
  "kind": "theorem",
  "lexical_name": "isField_of_isAlgebraic",
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
  "slug": "isfield-of-isalgebraic--5e4814810ac2ecd83ffdbc92",
  "source": {
    "blob": "920e0027760d6d79581119139254f9c6a08848d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 611,
    "path": "GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e4814810ac2ecd83ffdbc92a6307dfbf8427fe9ce6b0ad3a1dd17e8fcb8744b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c85fd7a-c9af-6aec-0f8b-fb330dfd24a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_isAlgebraic (H : A.LinearDisjoint L)
    (halg : Algebra.IsAlgebraic F A ∨ Algebra.IsAlgebraic F L) : IsField (A ⊗[F] L) :=
  have := H.isDomain
  Algebra.TensorProduct.isField_of_isAlgebraic F A L halg

/-- If `A` and `B` are field extensions of `F`, one of them is algebraic, such that there exists a
field `E` that `A` and `B` embeds into with linearly disjoint images, then `A ⊗[F] B`
is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearDisjoint/Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `920e0027760d6d79581119139254f9c6a08848d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
