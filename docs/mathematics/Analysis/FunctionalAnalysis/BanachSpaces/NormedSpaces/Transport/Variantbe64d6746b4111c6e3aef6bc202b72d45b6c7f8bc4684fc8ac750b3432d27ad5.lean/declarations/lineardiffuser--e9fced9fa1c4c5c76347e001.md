# LinearDiffuser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524f1b4f2abe145e6c90d59874989030014e0d7ebeb3539d2ee0ae27c4473eac",
  "kind": "structure",
  "lexical_name": "LinearDiffuser",
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
  "slug": "lineardiffuser--e9fced9fa1c4c5c76347e001",
  "source": {
    "blob": "2b667fd54e8c7ef97251658c28af1ffcdc0f8ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9fced9fa1c4c5c76347e00122ca0c5decf30640e4378e6b0a745dfa9038881b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524f1b4f2abe145e6c90d59874989030014e0d7ebeb3539d2ee0ae27c4473eac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearDiffuser
    (B : Type u) [NormedAddCommGroup B] [NormedSpace ℝ B] where
  graphNorm : B → ℝ
  graphNorm_nonnegative : ∀ x, 0 ≤ graphNorm x
  step : ℝ → B →L[ℝ] B
  semigroup_zero : step 0 = ContinuousLinearMap.id ℝ B
  semigroup_add :
    ∀ {s t : ℝ}, 0 ≤ s → 0 ≤ t →
      step (s + t) = (step s).comp (step t)
  boundConstant : ℝ
  decayRate : ℝ
  boundConstant_nonnegative : 0 ≤ boundConstant
  decayRate_nonnegative : 0 ≤ decayRate
  analytic_bound :
    ∀ (t : ℝ), 0 ≤ t → ∀ x,
      graphNorm (step t x) ≤
        boundConstant * Real.exp (-decayRate * t) * graphNorm x

namespace LinearDiffuser

variable {B : Type u} [NormedAddCommGroup B] [NormedSpace ℝ B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b667fd54e8c7ef97251658c28af1ffcdc0f8ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
