# Flatten.IsPlausibleStep.outerYield_flatMapM_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e84005e-a826-22f1-618c-7d69fa5e9df9",
  "kind": "theorem",
  "lexical_name": "Flatten.IsPlausibleStep.outerYield_flatMapM_pure",
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
  "slug": "flatten-isplausiblestep-outeryield-flatmapm-pure--8269e2a4ea63dc1b7ed8218b",
  "source": {
    "blob": "85beae749fc9f33da5d0527b3aedd1808ffc6372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8269e2a4ea63dc1b7ed8218b2c77f4ee20deeb4b0c87cd8609ba1d0bb01991c9",
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

Occurrence: `result:9e84005e-a826-22f1-618c-7d69fa5e9df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Flatten.IsPlausibleStep.outerYield_flatMapM_pure {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'}
    [Monad m] [MonadAttach m] [LawfulMonad m] [WeaklyLawfulMonadAttach m] [Iterator α Id β]
    [Iterator α₂ m γ]
    {f : β → m (IterM (α := α₂) m γ)} {it₁ it₁' : Iter (α := α) β} {it₂' b}
    (h : it₁.IsPlausibleStep (.yield it₁' b)) (h' : MonadAttach.CanReturn (f b) it₂') :
    (it₁.flatMapAfterM f none).IsPlausibleStep (.skip (it₁'.flatMapAfterM f (some it₂'))) := by
  apply outerYield_flatMapM (b := b)
  · exact FilterMap.PlausibleStep.yieldSome h (by simp)
  · exact h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85beae749fc9f33da5d0527b3aedd1808ffc6372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
