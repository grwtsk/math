# Iter.atIdxSlow?.induct_unfolding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d42deac0870351403475e3a3a43b34bcf10f0fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40c48d49-2808-9ffb-c63b-8622986f495e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c65ce6f9-36c9-50c7-646f-03f4058efdd1",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?.induct_unfolding",
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
  "slug": "iter-atidxslow-induct-unfolding--54b175fda2a1adfec4ec4f60",
  "source": {
    "blob": "d42deac0870351403475e3a3a43b34bcf10f0fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54b175fda2a1adfec4ec4f6030cff2b2e2f58f7776764d7f5da1bd6743aaa1a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c65ce6f9-36c9-50c7-646f-03f4058efdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?.induct_unfolding {α β : Type u} [Iterator α Id β] [Productive α Id]
    (motive : Nat → Iter β → Option β → Prop)
    -- Base case: we have reached index 0 and found a value
    (yield_zero : ∀ (it it' : Iter (α := α) β) (out : β) (property : it.IsPlausibleStep (IterStep.yield it' out)),
        it.step = ⟨IterStep.yield it' out, property⟩ → motive 0 it (some out))
    -- Inductive case: we have a yield but need to continue to a higher index
    (yield_succ : ∀ (it it' : Iter (α := α) β) (out : β) (property : it.IsPlausibleStep (IterStep.yield it' out)),
        it.step = ⟨IterStep.yield it' out, property⟩ →
        ∀ (k : Nat), motive k it' (Iter.atIdxSlow? k it') → motive k.succ it (Iter.atIdxSlow? k it'))
    -- Skip case: we encounter a skip and continue with the same index
    (skip_case : ∀ (n : Nat) (it it' : Iter β) (property : it.IsPlausibleStep (IterStep.skip it')),
        it.step = ⟨IterStep.skip it', property⟩ →
        motive n it' (Iter.atIdxSlow? n it') → motive n it (Iter.atIdxSlow? n it'))
    -- Done case: the iterator is exhausted, return none
    (done_case : ∀ (n : Nat) (it : Iter β) (property : it.IsPlausibleStep IterStep.done),
        it.step = ⟨IterStep.done, property⟩ → motive n it none)
    -- The conclusion: the property holds for all indices and iterators
    (n : Nat) (it : Iter β) : motive n it (Iter.atIdxSlow? n it) := by
  simp only [atIdxSlow?] at *
  rw [WellFounded.extrinsicFix₂_eq_apply]
  · split
    · split
      · apply yield_zero <;> assumption
      · apply yield_succ
        all_goals try assumption
        apply Iter.atIdxSlow?.induct_unfolding <;> assumption
    · apply skip_case
      all_goals try assumption
      apply Iter.atIdxSlow?.induct_unfolding <;> assumption
    · apply done_case <;> assumption
  · exact InvImage.wf _ WellFoundedRelation.wf
termination_by (n, it.finitelyManySkips)

/--
If possible, takes `n` steps with the iterator `it` and
returns the `n`-th emitted value, or `none` if `it` finished
before emitting `n` values.

This variant terminates after finitely many steps and requires a proof that the iterator is
productive. If such a proof is not available, consider using `Iter.toArray`.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42deac0870351403475e3a3a43b34bcf10f0fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
