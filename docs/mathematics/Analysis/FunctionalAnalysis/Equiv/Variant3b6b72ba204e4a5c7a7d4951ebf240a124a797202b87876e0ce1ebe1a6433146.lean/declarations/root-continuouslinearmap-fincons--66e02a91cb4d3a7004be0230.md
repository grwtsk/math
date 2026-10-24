# _root_.ContinuousLinearMap.finCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95ac948c8278510d5e33fa59f7fbf7e6b1086405e51f112b35fbcf9fdeb9286d",
  "kind": "abbrev",
  "lexical_name": "_root_.ContinuousLinearMap.finCons",
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
  "slug": "root-continuouslinearmap-fincons--66e02a91cb4d3a7004be0230",
  "source": {
    "blob": "8e1852df33d35ea430831b793e0c3133dcab7f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 808,
    "line": 788,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant3b6b72ba204e4a5c7a7d4951ebf240a124a797202b87876e0ce1ebe1a6433146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66e02a91cb4d3a7004be0230f6491fd88745c84256a72ff745460dedc122e3d1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Equiv/Variant3b6b72ba204e4a5c7a7d4951ebf240a124a797202b87876e0ce1ebe1a6433146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95ac948c8278510d5e33fa59f7fbf7e6b1086405e51f112b35fbcf9fdeb9286d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–808.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.ContinuousLinearMap.finCons
    [AddCommMonoid N] [Module R N] [TopologicalSpace N]
    (f : N →L[R] M 0) (fs : N →L[R] Π i, M (Fin.succ i)) :
    N →L[R] Π i, M i :=
  Fin.consEquivL R M ∘L f.prod fs

end

end Pi

section AddCommGroup

variable {R : Type*} [Semiring R] {M : Type*} [TopologicalSpace M] [AddCommGroup M] {M₂ : Type*}
  [TopologicalSpace M₂] [AddCommGroup M₂] {M₃ : Type*} [TopologicalSpace M₃] [AddCommGroup M₃]
  {M₄ : Type*} [TopologicalSpace M₄] [AddCommGroup M₄] [Module R M] [Module R M₂] [Module R M₃]
  [Module R M₄]

variable [IsTopologicalAddGroup M₄]

/-- Equivalence given by a block lower diagonal matrix. `e` and `e'` are diagonal square blocks,
  and `f` is a rectangular block below the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Equiv/Variant3b6b72ba204e4a5c7a7d4951ebf240a124a797202b87876e0ce1ebe1a6433146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant3b6b72ba204e4a5c7a7d4951ebf240a124a797202b87876e0ce1ebe1a6433146.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e1852df33d35ea430831b793e0c3133dcab7f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
