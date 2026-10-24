# IterM.toArray_flattenAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0352b69d-7ef8-a6ec-d0e7-46f6b54722c2",
  "kind": "theorem",
  "lexical_name": "IterM.toArray_flattenAfter",
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
  "slug": "iterm-toarray-flattenafter--4aef357241999a54233d7c0d",
  "source": {
    "blob": "abf1cf005a5797933028c9816f6c43f50f7fbcb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aef357241999a54233d7c0d37b8703dc46b76011f76031c7a10b5f525cd7949",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0352b69d-7ef8-a6ec-d0e7-46f6b54722c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.toArray_flattenAfter {α α₂ β : Type w} {m : Type w → Type w'}
    [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m]
    [Iterator α m (IterM (α := α₂) m β)] [Iterator α₂ m β] [Finite α m] [Finite α₂ m]
    {it₁ : IterM (α := α) m (IterM (α := α₂) m β)} {it₂ : Option (IterM (α := α₂) m β)} :
    (it₁.flattenAfter it₂).toArray = do
      match it₂ with
      | none => Array.flatten <$> (it₁.mapM fun it₂ => it₂.toArray).toArray
      | some it₂ => return (← it₂.toArray) ++ (← Array.flatten <$> (it₁.mapM fun it₂ => it₂.toArray).toArray) := by
  simp only [← IterM.toArray_toList, toList_flattenAfter]
  split
  · simp only [Functor.map_map]
    simp only [← Array.flatten_map_toArray_toArray, ← Functor.map_map]
    rw [IterM.toArray_toList, IterM.toArray_toList, ← IterM.toArray_map, IterM.toArray_map_mapM]
    apply congrArg (it₁.mapM · |>.toArray |> Functor.map Array.flatten); ext it₂
    simp
  · simp only [bind_pure_comp, Functor.map_map, map_bind, Array.flatten_toArray, bind_map_left,
      List.append_toArray]
    apply bind_congr; intro bs
    simp only [← Functor.map_map, ← IterM.toList_map, IterM.toList_map_mapM]
    apply congrArg (fun f => List.toArray <$> HAppend.hAppend bs <$> List.flatten <$> (mapM f it₁).toList)
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant021dbe495c6371560b80c7bf11decbc43cb4575f958ccc0fad514e108e672805.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf1cf005a5797933028c9816f6c43f50f7fbcb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
