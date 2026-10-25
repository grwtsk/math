# StrongRankCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0bdb5751e451302d14ee266f430d0f0cecf73516d328f1dfc83fe0c1a55317f",
  "kind": "class",
  "lexical_name": "StrongRankCondition",
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
  "slug": "strongrankcondition--2173cc965212b3d32c899fad",
  "source": {
    "blob": "1ff4ce972441ed87dfee1ac80166fc82d9495f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2173cc965212b3d32c899fadb57564583bbd151dee93434d58328ff3cac8d785",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0bdb5751e451302d14ee266f430d0f0cecf73516d328f1dfc83fe0c1a55317f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class StrongRankCondition : Prop where
  /-- Any injective linear map from `Rⁿ` to `Rᵐ` guarantees `n ≤ m`. -/
  le_of_fin_injective : ∀ {n m : ℕ} (f : (Fin n → R) →ₗ[R] Fin m → R), Injective f → n ≤ m
#align strong_rank_condition StrongRankCondition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Varianteacf3711d2337c662379b9418d36d07a27e5e492654e5d6be189c1f7f8a47f71.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff4ce972441ed87dfee1ac80166fc82d9495f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
