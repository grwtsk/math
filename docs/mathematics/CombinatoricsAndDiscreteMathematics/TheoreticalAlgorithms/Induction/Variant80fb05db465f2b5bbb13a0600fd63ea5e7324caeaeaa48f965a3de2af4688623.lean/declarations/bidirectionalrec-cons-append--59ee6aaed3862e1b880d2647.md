# bidirectionalRec_cons_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcaeedb8-cc45-7c20-00d3-b7b1201dba40",
  "kind": "theorem",
  "lexical_name": "bidirectionalRec_cons_append",
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
  "slug": "bidirectionalrec-cons-append--59ee6aaed3862e1b880d2647",
  "source": {
    "blob": "4a4c12f994ad8869c8bf4fcaa254374e357de266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59ee6aaed3862e1b880d26473bcf7fa9ddb2ca19e7f0fca2c68e41c83ff9728e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcaeedb8-cc45-7c20-00d3-b7b1201dba40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bidirectionalRec_cons_append {motive : List α → Sort*}
    (nil : motive []) (singleton : ∀ a : α, motive [a])
    (cons_append : ∀ (a : α) (l : List α) (b : α), motive l → motive (a :: (l ++ [b])))
    (a : α) (l : List α) (b : α) :
    bidirectionalRec nil singleton cons_append (a :: (l ++ [b])) =
      cons_append a l b (bidirectionalRec nil singleton cons_append l) := by
  conv_lhs => unfold bidirectionalRec
  cases l with
  | nil => rfl
  | cons x xs =>
  simp only [List.cons_append]
  dsimp only [← List.cons_append]
  suffices ∀ (ys init : List α) (hinit : init = ys) (last : α) (hlast : last = b),
      (cons_append a init last
        (bidirectionalRec nil singleton cons_append init)) =
      cast (congr_arg motive <| by simp [hinit, hlast])
        (cons_append a ys b (bidirectionalRec nil singleton cons_append ys)) by
    rw [this (x :: xs) _ (by rw [dropLast_append_cons, dropLast_singleton, append_nil]) _ (by simp)]
    simp
  rintro ys init rfl last rfl
  rfl

/-- Like `bidirectionalRec`, but with the list parameter placed first. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant80fb05db465f2b5bbb13a0600fd63ea5e7324caeaeaa48f965a3de2af4688623.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4c12f994ad8869c8bf4fcaa254374e357de266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
