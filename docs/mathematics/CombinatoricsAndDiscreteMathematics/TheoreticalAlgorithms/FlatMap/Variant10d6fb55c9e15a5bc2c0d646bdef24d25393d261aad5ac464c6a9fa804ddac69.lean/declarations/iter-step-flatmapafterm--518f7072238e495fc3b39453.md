# Iter.step_flatMapAfterM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb055751-fb3f-dcbb-f118-d91b67d8add9",
  "kind": "theorem",
  "lexical_name": "Iter.step_flatMapAfterM",
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
  "slug": "iter-step-flatmapafterm--518f7072238e495fc3b39453",
  "source": {
    "blob": "85beae749fc9f33da5d0527b3aedd1808ffc6372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:518f7072238e495fc3b39453c00584666684e62bfec106a3e97b5144f20f7f64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb055751-fb3f-dcbb-f118-d91b67d8add9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Iter.step_flatMapAfterM {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'}
    [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m] [Iterator α Id β] [Iterator α₂ m γ]
    {f : β → m (IterM (α := α₂) m γ)} {it₁ : Iter (α := α) β} {it₂ : Option (IterM (α := α₂) m γ)} :
  (it₁.flatMapAfterM f it₂).step = (do
    match hit : it₂ with
    | none =>
      match it₁.step with
      | .yield it₁' b h =>
        let fx ← MonadAttach.attach (f b)
        return .deflate (.skip (it₁'.flatMapAfterM f (some fx.val)) (hit ▸ .outerYield_flatMapM_pure h fx.property))
      | .skip it₁' h => return .deflate (.skip (it₁'.flatMapAfterM f it₂) (hit ▸ .outerSkip_flatMapM_pure h))
      | .done h => return .deflate (.done (hit ▸ .outerDone_flatMapM_pure h))
    | some it₂ =>
      match (← it₂.step).inflate with
      | .yield it₂' out h =>
        return .deflate (.yield (it₁.flatMapAfterM f (some it₂')) out (hit ▸ .innerYield_flatMapM_pure h))
      | .skip it₂' h =>
        return .deflate (.skip (it₁.flatMapAfterM f (some it₂')) (hit ▸ .innerSkip_flatMapM_pure h))
      | .done h =>
        return .deflate (.skip (it₁.flatMapAfterM f none) (hit ▸ .innerDone_flatMapM_pure h))) := by
  simp only [flatMapAfterM, IterM.step_flatMapAfterM, Iter.step_mapWithPostcondition,
    PostconditionT.operation_pure]
  split
  · split <;> simp [*]
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85beae749fc9f33da5d0527b3aedd1808ffc6372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
