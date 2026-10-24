# Iter.step_intermediateZip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28332f2f-c1b6-f121-607d-a9ebe0c541e8",
  "kind": "theorem",
  "lexical_name": "Iter.step_intermediateZip",
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
  "slug": "iter-step-intermediatezip--01d1fe23d0b995b9534707f5",
  "source": {
    "blob": "6e4827db5ef275970daa8a10a885d6bfb37c18a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d1fe23d0b995b9534707f5a4b7efd550725917da02ef6cf0fa42516f8fc8ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28332f2f-c1b6-f121-607d-a9ebe0c541e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.step_intermediateZip
    [Iterator α₁ Id β₁] [Iterator α₂ Id β₂]
    {it₁ : Iter (α := α₁) β₁}
    {memo : Option { out : β₁ //
        ∃ it : Iter (α := α₁) β₁, it.toIterM.IsPlausibleOutput out }}
    {it₂ : Iter (α := α₂) β₂} :
    (Intermediate.zip it₁ memo it₂).step = (
      match memo with
      | none =>
        match it₁.step with
        | .yield it₁' out hp =>
          .skip (Intermediate.zip it₁' (some ⟨out, _, _, hp⟩) it₂)
            (.yieldLeft rfl hp)
        | .skip it₁' hp =>
          .skip (Intermediate.zip it₁' none it₂)
            (.skipLeft rfl hp)
        | .done hp =>
          .done (.doneLeft rfl hp)
      | some out₁ =>
        match it₂.step with
        | .yield it₂' out₂ hp =>
          .yield (Intermediate.zip it₁ none it₂') (out₁, out₂)
            (.yieldRight (it := Intermediate.zip it₁ (some out₁) it₂ |>.toIterM) rfl hp)
        | .skip it₂' hp =>
          .skip (Intermediate.zip it₁ (some out₁) it₂')
            (.skipRight rfl hp)
        | .done hp =>
          .done (.doneRight rfl hp)) := by
  simp only [Intermediate.zip, IterM.step_intermediateZip, Iter.step, toIterM_toIter]
  cases memo
  case none =>
    simp only [Option.map_eq_map, Option.map_none, PlausibleIterStep.skip, PlausibleIterStep.done,
      Id.run_bind, Option.map_some]
    cases it₁.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp
  case some out₁ =>
    simp only [Option.map_eq_map, Option.map_some, PlausibleIterStep.yield, PlausibleIterStep.skip,
      PlausibleIterStep.done, Id.run_bind, Option.map_none]
    cases it₂.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4827db5ef275970daa8a10a885d6bfb37c18a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
