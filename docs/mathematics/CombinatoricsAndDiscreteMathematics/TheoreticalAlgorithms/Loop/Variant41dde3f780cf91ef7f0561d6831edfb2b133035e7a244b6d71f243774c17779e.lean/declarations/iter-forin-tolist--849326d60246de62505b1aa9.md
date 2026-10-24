# Iter.forIn'_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b948383f-9250-81df-4d40-e9f26f07ce5b",
  "kind": "theorem",
  "lexical_name": "Iter.forIn'_toList",
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
  "slug": "iter-forin-tolist--849326d60246de62505b1aa9",
  "source": {
    "blob": "a554251c59f45781c3037de3033e14a5093aea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 236,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:849326d60246de62505b1aa97775b55a7997fee6eff0e936be2d1396cb34ec26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b948383f-9250-81df-4d40-e9f26f07ce5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.forIn'_toList {α β : Type w} [Iterator α Id β]
    [Finite α Id] {m : Type x → Type x'} [Monad m] [LawfulMonad m]
    [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    [LawfulDeterministicIterator α Id]
    {γ : Type x} {it : Iter (α := α) β} {init : γ}
    {f : (out : β) → _ → γ → m (ForInStep γ)} :
    letI : ForIn' m (Iter (α := α) β) β _ := Iter.instForIn'
    ForIn'.forIn' it.toList init f = ForIn'.forIn' it init (fun out h acc => f out (Iter.mem_toList_iff_isPlausibleIndirectOutput.mpr h) acc) := by
  induction it using Iter.inductSteps generalizing init with | step it ihy ihs
  have := it.toList_eq_match_step
  generalize hs : it.step = step at this
  rw [forIn'_toList.aux this]
  rw [forIn'_eq_match_step]
  rw [List.forIn'_eq_foldlM] at *
  simp only [map_eq_pure_bind, hs]
  cases step using PlausibleIterStep.casesOn
  · rename_i it' out h
    simp only [List.attach_cons, List.foldlM_cons, bind_pure_comp, map_bind]
    apply bind_congr
    intro forInStep
    cases forInStep
    · induction it'.toList.attach <;> simp [*]
    · simp only [List.foldlM_map]
      simp only [List.forIn'_eq_foldlM] at ihy
      simp only at this
      simp only [ihy h (f := fun out h acc => f out (by rw [this]; exact List.mem_cons_of_mem _ h) acc)]
  · rename_i it' h
    simp only [bind_pure_comp]
    simp only [List.forIn'_eq_foldlM] at ihs
    simp only at this
    simp only [ihs h (f := fun out h acc => f out (this ▸ h) acc)]
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a554251c59f45781c3037de3033e14a5093aea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
