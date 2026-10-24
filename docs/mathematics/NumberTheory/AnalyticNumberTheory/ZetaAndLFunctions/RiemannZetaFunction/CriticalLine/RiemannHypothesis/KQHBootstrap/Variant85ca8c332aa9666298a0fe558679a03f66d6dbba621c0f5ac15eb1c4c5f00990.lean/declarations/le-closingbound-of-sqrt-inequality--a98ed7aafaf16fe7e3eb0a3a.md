# le_closingBound_of_sqrt_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d510bbad-a3e8-9d17-2c8c-adc4d8a3b753",
  "kind": "theorem",
  "lexical_name": "le_closingBound_of_sqrt_inequality",
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
  "slug": "le-closingbound-of-sqrt-inequality--a98ed7aafaf16fe7e3eb0a3a",
  "source": {
    "blob": "15803fc63f4c80681e286df0d3d89f54a1eed643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a98ed7aafaf16fe7e3eb0a3ae1ff43f9fc575c0e15a162e77fa377600af78a6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d510bbad-a3e8-9d17-2c8c-adc4d8a3b753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_closingBound_of_sqrt_inequality {K C₀ C₁ : ℝ}
    (hK : 0 ≤ K) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (hclose : K ≤ C₀ + C₁ * Real.sqrt K) :
    K ≤ closingBound C₀ C₁ := by
  have hx := Real.sqrt_nonneg K
  have hx₂ := Real.sq_sqrt hK
  have hr := closingRoot_nonneg (C₀ := C₀) hC₁
  have hr₁ := closingRoot_ge_coefficient (C₁ := C₁) hC₀
  have hr₂ := closingRoot_equation (C₁ := C₁) hC₀
  have hxr : Real.sqrt K ≤ closingRoot C₀ C₁ := by
    by_contra h
    have hlt := lt_of_not_ge h
    have hp : 0 < (Real.sqrt K - closingRoot C₀ C₁) *
        (Real.sqrt K + closingRoot C₀ C₁ - C₁) := by
      apply mul_pos
      · linarith
      · linarith
    nlinarith
  unfold closingBound
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15803fc63f4c80681e286df0d3d89f54a1eed643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
