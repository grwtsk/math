# IterM.findM?_eq_match_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abdfc7ee51b24670b39bbf0209e00ba5361a14ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 814,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd3f5893ff6946098cc0fc86efff5b21a0f4c7d84bff01511bd58b9a1eaa82e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef59fba5-d486-f785-493f-ff657e07bdce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c13562f-c862-f522-8ad9-b43a7277e5ac",
  "kind": "theorem",
  "lexical_name": "IterM.findM?_eq_match_step",
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
  "slug": "iterm-findm-eq-match-step--01c275062a3f0dd564b9c572",
  "source": {
    "blob": "abdfc7ee51b24670b39bbf0209e00ba5361a14ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 814,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantdd3f5893ff6946098cc0fc86efff5b21a0f4c7d84bff01511bd58b9a1eaa82e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c275062a3f0dd564b9c572926caa2ae193eca44f76162d3ca73fb960ea1a8e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantdd3f5893ff6946098cc0fc86efff5b21a0f4c7d84bff01511bd58b9a1eaa82e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c13562f-c862-f522-8ad9-b43a7277e5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.findM?_eq_match_step {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [IteratorLoop α m m] [LawfulMonad m] [Finite α m] [LawfulIteratorLoop α m m]
    {it : IterM (α := α) m β} {f : β → m (ULift Bool)} :
    it.findM? f = (do
      match (← it.step).inflate.val with
      | .yield it' out =>
        if (← f out).down then return (some out) else it'.findM? f
      | .skip it' => it'.findM? f
      | .done => return none) := by
  rw [findM?_eq_findSomeM?, findSomeM?_eq_match_step]
  apply bind_congr; intro step
  split
  · simp only [bind_assoc]
    apply bind_congr; intro fx
    split <;> simp [findM?_eq_findSomeM?]
  · simp [findM?_eq_findSomeM?]
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantdd3f5893ff6946098cc0fc86efff5b21a0f4c7d84bff01511bd58b9a1eaa82e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantdd3f5893ff6946098cc0fc86efff5b21a0f4c7d84bff01511bd58b9a1eaa82e3.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdfc7ee51b24670b39bbf0209e00ba5361a14ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
