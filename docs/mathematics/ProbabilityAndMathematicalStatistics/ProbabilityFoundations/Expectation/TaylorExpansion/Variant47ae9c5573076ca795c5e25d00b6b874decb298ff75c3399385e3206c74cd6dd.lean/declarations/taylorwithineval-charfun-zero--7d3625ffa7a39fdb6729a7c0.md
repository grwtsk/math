# taylorWithinEval_charFun_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d21e7029-369e-e2a7-719e-ee1e70eab006",
  "kind": "lemma",
  "lexical_name": "taylorWithinEval_charFun_zero",
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
  "slug": "taylorwithineval-charfun-zero--7d3625ffa7a39fdb6729a7c0",
  "source": {
    "blob": "6de8d53bdfb87882b57f3602abeb4db89faaa449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d3625ffa7a39fdb6729a7c0b3d19d603ebfa04b8f40dfa891ff27c39a47aee7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d21e7029-369e-e2a7-719e-ee1e70eab006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma taylorWithinEval_charFun_zero {n : ℕ} (hint : MemLp id n μ) (t : ℝ) :
    taylorWithinEval (charFun μ) n univ 0 t
      = ∑ k ∈ Finset.range (n + 1), (k ! : ℂ)⁻¹ * (t * I) ^ k * ∫ x, x ^ k ∂μ := by
  simp_rw [taylor_within_apply, sub_zero, RCLike.real_smul_eq_coe_mul]
  refine Finset.sum_congr rfl fun k hkn ↦ ?_
  push_cast
  have hint' : MemLp id k μ := hint.mono_exponent (by simp_all)
  simp [iteratedDeriv_charFun_zero hint', mul_pow, mul_comm, mul_assoc, mul_left_comm]

variable {Ω : Type*} {mΩ : MeasurableSpace Ω} {P : Measure Ω} [IsProbabilityMeasure P]
  {X : Ω → ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de8d53bdfb87882b57f3602abeb4db89faaa449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
