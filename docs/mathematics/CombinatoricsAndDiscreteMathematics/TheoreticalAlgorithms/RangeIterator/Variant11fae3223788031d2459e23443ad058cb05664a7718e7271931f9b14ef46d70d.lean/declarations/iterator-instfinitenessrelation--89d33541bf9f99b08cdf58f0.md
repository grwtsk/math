# Iterator.instFinitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed83a4737ffb79600f71372bb3f5797cd39af11cfa5eb1c9252f9fefffd6f7bb",
  "kind": "def",
  "lexical_name": "Iterator.instFinitenessRelation",
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
  "slug": "iterator-instfinitenessrelation--89d33541bf9f99b08cdf58f0",
  "source": {
    "blob": "2c65cc1b08eaaaddbf107917b05560b21bd9d163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 824,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89d33541bf9f99b08cdf58f0582252d4a5cc3ade1d87a62eaa84227aba3ccecb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed83a4737ffb79600f71372bb3f5797cd39af11cfa5eb1c9252f9fefffd6f7bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def Iterator.instFinitenessRelation [UpwardEnumerable α] [LT α] [DecidableLT α]
    [LawfulUpwardEnumerable α] [Rxo.IsAlwaysFinite α] :
    FinitenessRelation (Rxo.Iterator α) Id where
  Rel it' it := it'.IsPlausibleSuccessorOf it
  wf := by
    constructor
    intro it
    have hnone : ∀ bound, Acc (fun it' it : IterM (α := Rxo.Iterator α) Id α => it'.IsPlausibleSuccessorOf it)
        ⟨⟨none, bound⟩⟩ := by
      intro bound
      constructor
      intro it' ⟨step, hs₁, hs₂⟩
      simp only [IterM.IsPlausibleStep, Iterator.IsPlausibleStep, Monadic.step, instIteratorIteratorIdOfUpwardEnumerableOfDecidableLT] at hs₂ -- TODO
      simp [hs₂, IterStep.successor] at hs₁
    simp only [IterM.IsPlausibleSuccessorOf, IterM.IsPlausibleStep, Iterator.IsPlausibleStep,
      Monadic.step, exists_eq_right, instIteratorIteratorIdOfUpwardEnumerableOfDecidableLT] at hnone ⊢ -- TODO
    match it with
    | ⟨⟨none, _⟩⟩ => apply hnone
    | ⟨⟨some init, bound⟩⟩ =>
      obtain ⟨n, hn⟩ := Rxo.IsAlwaysFinite.finite init bound
      induction n generalizing init with
      | zero =>
        simp only [succMany?_zero, Option.elim_some] at hn
        constructor
        simp [hn, IterStep.successor]
      | succ n ih =>
        constructor
        rintro it'
        simp only [succMany?_add_one_eq_succ?_bind_succMany?] at hn
        match hs : succ? init with
        | none =>
          simp only [hs]
          intro h
          split at h
          · cases h
            apply hnone
          · cases h
        | some a =>
          intro h
          simp only [hs] at h hn
          specialize ih _ hn
          split at h
          · cases h
            exact ih
          · cases h
  subrelation := id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant11fae3223788031d2459e23443ad058cb05664a7718e7271931f9b14ef46d70d.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c65cc1b08eaaaddbf107917b05560b21bd9d163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
