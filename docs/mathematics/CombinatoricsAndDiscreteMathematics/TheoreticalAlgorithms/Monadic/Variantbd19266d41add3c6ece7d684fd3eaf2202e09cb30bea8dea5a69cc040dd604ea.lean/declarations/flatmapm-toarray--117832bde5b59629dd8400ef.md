# flatMapM_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1bffc84-08fd-0c1b-8a22-ce8541fa1e6b",
  "kind": "theorem",
  "lexical_name": "flatMapM_toArray",
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
  "slug": "flatmapm-toarray--117832bde5b59629dd8400ef",
  "source": {
    "blob": "a9b08cc4c971cd3d345e02e71f29cb4ce2a8c248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantbd19266d41add3c6ece7d684fd3eaf2202e09cb30bea8dea5a69cc040dd604ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:117832bde5b59629dd8400efce3b03c19f8a31de284a356b6c4f451fa9979e9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantbd19266d41add3c6ece7d684fd3eaf2202e09cb30bea8dea5a69cc040dd604ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1bffc84-08fd-0c1b-8a22-ce8541fa1e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem flatMapM_toArray [Monad m] [LawfulMonad m] {l : List α} {f : α → m (Array β)} :
    l.toArray.flatMapM f = toArray <$> l.flatMapM (fun a => Array.toList <$> f a) := by
  simp only [Array.flatMapM, bind_pure_comp, foldlM_toArray, flatMapM]
  conv => lhs; arg 2; change [].reverse.flatten.toArray
  generalize [] = acc
  induction l generalizing acc with
  | nil => simp only [foldlM_nil, flatMapM.loop, map_pure]
  | cons x xs ih =>
    simp only [foldlM_cons, bind_map_left, flatMapM.loop, _root_.map_bind]
    congr; funext xs
    conv => lhs; rw [Array.toArray_append, ← flatten_concat, ← reverse_cons]
    exact ih _

end List

namespace Array

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantbd19266d41add3c6ece7d684fd3eaf2202e09cb30bea8dea5a69cc040dd604ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantbd19266d41add3c6ece7d684fd3eaf2202e09cb30bea8dea5a69cc040dd604ea.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9b08cc4c971cd3d345e02e71f29cb4ce2a8c248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
