# Iter.step_intermediateDropWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41119439-0ce2-c602-3faf-c26fdbecbd18",
  "kind": "theorem",
  "lexical_name": "Iter.step_intermediateDropWhile",
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
  "slug": "iter-step-intermediatedropwhile--4d72bc65e764d24905a77ab1",
  "source": {
    "blob": "35a8cf0582c98860e489bc2b3b0be9b5eb0d0f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d72bc65e764d24905a77ab1d155c1fd4bf46d4d2bfd92397f31d25026f67d43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41119439-0ce2-c602-3faf-c26fdbecbd18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.step_intermediateDropWhile {α β} [Iterator α Id β]
    {it : Iter (α := α) β} {P} {dropping} :
    (Iter.Intermediate.dropWhile P dropping it).step = (match it.step with
      | .yield it' out h =>
        if h' : dropping = true then
          match hP : P out with
          | true =>
            .skip (Intermediate.dropWhile P true it') (.dropped h h' (by simpa))
          | false =>
            .yield (Intermediate.dropWhile P false it') out (.start h h' (by simpa))
        else
          .yield (Intermediate.dropWhile P false it') out
              (.yield h (Bool.not_eq_true _ ▸ h'))
      | .skip it' h =>
        .skip (Intermediate.dropWhile P dropping it') (.skip h)
      | .done h =>
        .done (.done h)) := by
  simp [Intermediate.dropWhile_eq_dropWhile_toIterM, Iter.step, IterM.step_intermediateDropWhile]
  cases it.toIterM.step.run.inflate using PlausibleIterStep.casesOn
  · simp only [IterM.Step.toPure_yield, PlausibleIterStep.yield, toIter_toIterM, toIterM_toIter]
    split
    · split
      · split
        · simp
        · exfalso; simp_all
      · split
        · exfalso; simp_all
        · simp
    · simp
  · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a8cf0582c98860e489bc2b3b0be9b5eb0d0f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
