# IterM.step_flatMapAfterM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61672d75-25b4-6c7f-eaf0-fba37fbcbaac",
  "kind": "theorem",
  "lexical_name": "IterM.step_flatMapAfterM",
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
  "slug": "iterm-step-flatmapafterm--03eb8ff5bc8b22380d4889c4",
  "source": {
    "blob": "689a6bf3049d1fd93b2529686d1726cfd4833e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03eb8ff5bc8b22380d4889c4421d83314320a4a4b82391a6e22bac9f54e27e9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61672d75-25b4-6c7f-eaf0-fba37fbcbaac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem IterM.step_flatMapAfterM {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'} [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m]
    [Iterator α m β] [Iterator α₂ m γ] {f : β → m (IterM (α := α₂) m γ)} {it₁ : IterM (α := α) m β}
    {it₂ : Option (IterM (α := α₂) m γ)} :
  (it₁.flatMapAfterM f it₂).step = (
    match it₂ with
    | none => do
      match (← it₁.step).inflate with
      | .yield it₁' b h =>
        let fx ← MonadAttach.attach (f b)
        return .deflate (.skip (it₁'.flatMapAfterM f (some fx.val)) (.outerYield_flatMapM h fx.property))
      | .skip it₁' h => return .deflate (.skip (it₁'.flatMapAfterM f none) (.outerSkip_flatMapM h))
      | .done h => return .deflate (.done (.outerDone_flatMapM h))
    | some it₂ => do
      match (← it₂.step).inflate with
      | .yield it₂' out h => return .deflate (.yield (it₁.flatMapAfterM f (some it₂')) out (.innerYield_flatMapM h))
      | .skip it₂' h => return .deflate (.skip (it₁.flatMapAfterM f (some it₂')) (.innerSkip_flatMapM h))
      | .done h => return .deflate (.skip (it₁.flatMapAfterM f none) (.innerDone_flatMapM h))) := by
  simp only [flatMapAfterM, step_flattenAfter, IterM.step_mapM]
  split
  · simp only [bind_assoc]
    apply bind_congr; intro step
    cases step.inflate using PlausibleIterStep.casesOn
    · simp only [bind_pure_comp, bind_map_left, Shrink.inflate_deflate]
    · simp
    · simp
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant9654e19a05bbbeff7599c6cdcbbe1061790d4cf8fc4d3180f662bc4fc17f22cf.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689a6bf3049d1fd93b2529686d1726cfd4833e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
