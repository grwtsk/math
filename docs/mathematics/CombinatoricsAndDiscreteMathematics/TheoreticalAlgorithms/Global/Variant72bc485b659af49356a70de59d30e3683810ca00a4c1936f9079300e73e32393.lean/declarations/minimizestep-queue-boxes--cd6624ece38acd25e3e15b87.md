# minimizeStep_queue_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:955ac726-33e6-6216-7a30-0f744adba1cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac7edf67-cbdd-2346-2508-6e6e98a520b9",
  "kind": "theorem",
  "lexical_name": "minimizeStep_queue_boxes",
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
  "slug": "minimizestep-queue-boxes--cd6624ece38acd25e3e15b87",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 492,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6624ece38acd25e3e15b87dfaa7c74d0d8b5fc0c8bc4c70450a065aa65c030",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7edf67-cbdd-2346-2508-6e6e98a520b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeStep_queue_boxes (e : Expr) (cfg : GlobalOptConfig)
    (hd : ℚ × Box) (tl : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box)
    (queue' : List (ℚ × Box)) (bestLB' bestUB' : ℚ) (bestBox' : Box)
    (hStep : minimizeStep e cfg (hd :: tl) bestLB bestUB bestBox = some (queue', bestLB', bestUB', bestBox'))
    (lb : ℚ) (B' : Box) (hmem : (lb, B') ∈ queue') :
    let B_curr := if cfg.useMonotonicity then
        (pruneBoxForMin hd.2 (gradientIntervalN e hd.2 hd.2.length)).1 else hd.2
    (lb, B') ∈ tl ∨ B' = (Box.splitWidest B_curr).1 ∨ B' = (Box.splitWidest B_curr).2 := by
  simp only [minimizeStep, popBest] at hStep
  split_ifs at hStep <;> simp only [Option.some.injEq, Prod.mk.injEq] at hStep
  all_goals first
    | (cases hStep; left; assumption)  -- prune case and small case
    | (rcases hStep with ⟨hQ, _, _, _⟩
       subst hQ  -- substitute queue' directly
       -- Simplify the goal using all hypotheses about the conditions
       simp_all only [ite_true, true_or]
       -- Now hmem can be in insertByBound forms or just tl
       -- The structure is insertByBound(insertByBound(tl, I1.lo, B1), I2.lo, B2)
       -- So first unpack gives B2 (splitWidest.2), second gives B1 (splitWidest.1)
       first
         | done  -- simp_all closed the goal
         | (-- Both children added: unwrap B2 first, then B1
            rw [mem_insertByBound] at hmem
            rcases hmem with ⟨rfl, _⟩ | hmem
            · right; right; rfl  -- B' = splitWidest.2
            · rw [mem_insertByBound] at hmem
              rcases hmem with ⟨rfl, _⟩ | hmem
              · right; left; rfl  -- B' = splitWidest.1
              · left; exact hmem)  -- B' ∈ tl
         | (-- Only B2 added
            rw [mem_insertByBound] at hmem
            rcases hmem with ⟨rfl, _⟩ | hmem
            · right; right; rfl
            · left; exact hmem)
         | (-- Only B1 added
            rw [mem_insertByBound] at hmem
            rcases hmem with ⟨rfl, _⟩ | hmem
            · right; left; rfl
            · left; exact hmem))

/-- Helper: bestUB' is achievable if bestUB is achievable -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
