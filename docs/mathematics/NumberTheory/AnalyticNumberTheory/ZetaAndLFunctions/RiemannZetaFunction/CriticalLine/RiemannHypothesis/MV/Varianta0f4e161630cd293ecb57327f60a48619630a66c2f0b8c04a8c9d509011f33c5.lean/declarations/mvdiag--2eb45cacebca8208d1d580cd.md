# MVDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:becf71f7605b63a92a06a0ef9ff3220cad9a61df5fd65189593886a96a5671b6",
  "kind": "def",
  "lexical_name": "MVDiag",
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
  "slug": "mvdiag--2eb45cacebca8208d1d580cd",
  "source": {
    "blob": "768c33b0c9fb85050a77e67994858ccc3aa402be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2eb45cacebca8208d1d580cdd7ec11a0c050dfdc589ef7910e1b9408b4ff87b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:becf71f7605b63a92a06a0ef9ff3220cad9a61df5fd65189593886a96a5671b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVDiag (C : ℝ) : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι] (freq δ : ι → ℝ) (x : ι → ℂ),
    Function.Injective freq → (∀ r, 0 < δ r) → (∀ r s, r ≠ s → δ r ≤ |freq r - freq s|) →
    ‖∑ r, ∑ s, if r = s then (0 : ℂ) else x r * conj (x s) / ((freq r - freq s : ℝ) : ℂ)‖
      ≤ C * ∑ r, ‖x r‖ ^ 2 / δ r

namespace MV

variable {ι : Type} [Fintype ι] [DecidableEq ι]

/-- The sesquilinear form B(x,z) := Σ_{r≠s} x_r z̄_s/(λ_r−λ_s), written with a coefficient
c_{rs} (0 on the diagonal) so that (bi)linearity is by ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MV/Varianta0f4e161630cd293ecb57327f60a48619630a66c2f0b8c04a8c9d509011f33c5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768c33b0c9fb85050a77e67994858ccc3aa402be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
