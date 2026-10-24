# SetLike.GradedBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c31704775788a52f5509aadf6dd1cac6a7c4f596b0977c8be521bb22b46f719c",
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
  "slug": "setlike-gradedbracket--f4dc8b972eaae9deac875427",
  "source": {
    "blob": "0ea10d8d9ccab414dc5f012ee21fd53d3bb4ae7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4dc8b972eaae9deac875427bfb4c72c8913f10a6955a6bbcc4bd69b923d0ecd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c31704775788a52f5509aadf6dd1cac6a7c4f596b0977c8be521bb22b46f719c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ea10d8d9ccab414dc5f012ee21fd53d3bb4ae7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
