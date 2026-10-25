# instFinitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80177d53600ca14e36fe83956b2fce835836aa84efa2568cacf97c4d4289ba00",
  "kind": "def",
  "lexical_name": "instFinitenessRelation",
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
  "slug": "instfinitenessrelation--2837388fd58bcbab0a7fddf8",
  "source": {
    "blob": "ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2837388fd58bcbab0a7fddf82ee2399a43a57786e6fc4a5f94ddfa9659403246",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80177d53600ca14e36fe83956b2fce835836aa84efa2568cacf97c4d4289ba00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def instFinitenessRelation :
    FinitenessRelation (Zipper α β) Id where
  Rel t' t := t'.internalState.measure < t.internalState.measure
  wf := InvImage.wf _ Nat.lt_wfRel.wf
  subrelation {it it'} h := by
    obtain ⟨step, h, h'⟩ := h
    simp only [IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIterator] at h'
    subst h'
    simp only [Zipper.step] at h
    split at h
    · -- .done: no successor
      simp only [IterStep.successor_done] at h
      exact nomatch h
    · -- .consEntries es z'
      rename_i es z' heq
      split at h
      · -- 0 < es.size
        rename_i hsz
        have h1 := subarrayMeasure_cons es hsz
        match heq_es0 : es[0] with
        | .null =>
          simp only [heq_es0, IterStep.successor_skip, Option.some.injEq] at h; subst h
          simp only [heq, Zipper.measure, heq_es0, Entry.measure] at h1 ⊢; omega
        | .entry k v =>
          simp only [heq_es0, IterStep.successor_yield, Option.some.injEq] at h; subst h
          simp only [heq, Zipper.measure, heq_es0, Entry.measure] at h1 ⊢; omega
        | .ref node =>
          simp only [heq_es0, IterStep.successor_skip, Option.some.injEq] at h; subst h
          simp only [heq_es0, Entry.measure] at h1
          match heq_node : node with
          | .entries nes =>
            simp only [Zipper.prependNode, heq, Zipper.measure]
            have h2 := subarrayMeasure_toSubarray_eq nes
            omega
          | .collision ks vs hsz' =>
            simp only [Zipper.prependNode, heq, Zipper.measure, Array.size_mkSlice_rii]
            simp only [Node.measure] at h1
            omega
      · -- ¬(0 < es.size) → skip to z'
        simp only [IterStep.successor_skip, Option.some.injEq] at h; subst h
        simp only [heq, Zipper.measure]; omega
    · -- .consCollision keys vals hsz z'
      rename_i keys vals hsz_eq z' heq
      split at h
      · -- 0 < vals.size → yield
        simp only [IterStep.successor_yield, Option.some.injEq] at h; subst h
        simp only [heq, Zipper.measure, Subarray.size_drop]; omega
      · -- ¬(0 < vals.size) → skip
        simp only [IterStep.successor_skip, Option.some.injEq] at h; subst h
        simp only [heq, Zipper.measure]; omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
