# Iter.step_take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1612003a7fe28e3d4cdb3c67ab4205161a7de62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fcfc218-f4d6-224a-1a48-39cf25adf330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:914ad139-c973-b2a7-91c5-7c68b6dc1021",
  "kind": "theorem",
  "lexical_name": "Iter.step_take",
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
  "slug": "iter-step-take--34621d1d62714aee27425c7e",
  "source": {
    "blob": "c1612003a7fe28e3d4cdb3c67ab4205161a7de62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34621d1d62714aee27425c7ecfc8a9c584979bb2c6f9a4b43695db32280a5b80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:914ad139-c973-b2a7-91c5-7c68b6dc1021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.step_take {α β} [Iterator α Id β] {n : Nat}
    {it : Iter (α := α) β} :
    (it.take n).step = (match n with
      | 0 => .done (.depleted rfl)
      | k + 1 =>
        match it.step with
        | .yield it' out h => .yield (it'.take k) out (Take.isPlausibleStep_take_yield h)
        | .skip it' h => .skip (it'.take (k + 1)) (Take.isPlausibleStep_take_skip h)
        | .done h => .done (.done h)) := by
  simp only [Iter.step, Iter.step, Iter.take_eq_toIter_take_toIterM, IterM.step_take, toIterM_toIter]
  cases n
  case zero => simp [PlausibleIterStep.done]
  case succ k =>
    simp only [Id.run_bind]
    generalize it.toIterM.step.run = step
    cases step.inflate using PlausibleIterStep.casesOn <;>
      simp [PlausibleIterStep.yield, PlausibleIterStep.skip, PlausibleIterStep.done]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variant895195f0d32c86a7eaa8550be0b1e28e10a73a4f31bad83fde8c20188a2b0915.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1612003a7fe28e3d4cdb3c67ab4205161a7de62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
