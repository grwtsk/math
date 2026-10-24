# Iter.anyM_eq_anyM_mapM_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95a91a218b4b311e3abaa5b8519403759c84e85a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 768,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8d6145a-e12c-73a4-a3c2-3b7fd387c7c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dea6a42-90ca-7677-670d-6ac1950e2d78",
  "kind": "theorem",
  "lexical_name": "Iter.anyM_eq_anyM_mapM_pure",
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
  "slug": "iter-anym-eq-anym-mapm-pure--6e01382e766eb3a173b2c9d3",
  "source": {
    "blob": "95a91a218b4b311e3abaa5b8519403759c84e85a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 768,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e01382e766eb3a173b2c9d3e7f8ae55a9820fb9e1b2717b154b87687c8d0eae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dea6a42-90ca-7677-670d-6ac1950e2d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.anyM_eq_anyM_mapM_pure {α β : Type} {m : Type → Type w'} [Iterator α Id β]
    [Finite α Id] [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m]
    [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    {it : Iter (α := α) β} {p : β → m Bool} :
    it.anyM p = ULift.down <$> (it.mapM (α := α) (pure (f := m))).anyM (fun x => ULift.up <$> p x) := by
  rw [anyM_eq_forIn, IterM.anyM_eq_forIn, map_eq_pure_bind]
  induction it using Iter.inductSteps with | step it ihy ihs =>
  rw [forIn_eq_match_step, IterM.forIn_eq_match_step, bind_assoc, step_mapM]
  cases it.step using PlausibleIterStep.casesOn
  · rename_i out _
    simp only
    simp only [bind_assoc, pure_bind, map_eq_pure_bind, Shrink.inflate_deflate,
      liftM, monadLift]
    have {x : m Bool} : x = MonadAttach.attach (pure out) >>= (fun _ => x) := by
      rw (occs := [1]) [show x = pure out >>= (fun _ => x) by simp]
      conv => lhs; rw [← WeaklyLawfulMonadAttach.map_attach (x := pure out)]
      simp
    refine Eq.trans this ?_
    simp only [WeaklyLawfulMonadAttach.bind_attach_of_nonempty (x := pure out), pure_bind]
    split; rotate_left; rfl
    apply bind_congr; intro px
    split
    · simp
    · simp [ihy ‹_›, monadLift]
  · simp [ihs ‹_›]
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant2f07ae09315ac90bcae3b21c68774e7f8a5e5ac9573aabf91758acceb714ec11.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95a91a218b4b311e3abaa5b8519403759c84e85a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
