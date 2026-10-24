# SetLike.GradedBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fde5e6f2a7446161e874d9a613cfc99fec38a83b00fb4416d5095f724a6c183d",
  "kind": "class",
  "lexical_name": "SetLike.GradedBracket",
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
  "slug": "setlike-gradedbracket--0ac0be78466dcdb38fecbb07",
  "source": {
    "blob": "603c0f66d72e198eecd5fbeee08d70ded1497d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ac0be78466dcdb38fecbb0746d016fe488e1a831a79996a8596a18385c0a79d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fde5e6f2a7446161e874d9a613cfc99fec38a83b00fb4416d5095f724a6c183d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SetLike.GradedBracket [SetLike σ L] [SetLike τ M] [Bracket L M] [VAdd ι κ] (ℒ : ι → σ)
    (ℳ : κ → τ) : Prop where
  /-- Bracket is homogeneous -/
  bracket_mem : ∀ ⦃i j⦄ {gi hj}, gi ∈ ℒ i → hj ∈ ℳ j → ⁅gi, hj⁆ ∈ ℳ (i +ᵥ j)

variable [DecidableEq ι] [AddCommMonoid ι] [CommRing R] [LieRing L] [LieAlgebra R L]
  (ℒ : ι → Submodule R L) [DecidableEq κ] [VAdd ι κ] [AddCommGroup M] [Module R M]
  [LieRingModule L M] [LieModule R L M] (ℳ : κ → Submodule R M)

/-- A class that ensures a Lie algebra has a bracket that preserves a decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Graded/Variant529c58a836f1dc2d42ddc8daf85e7410f50d1ee2b93cb68484e71d7cabbf7c3f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `603c0f66d72e198eecd5fbeee08d70ded1497d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
