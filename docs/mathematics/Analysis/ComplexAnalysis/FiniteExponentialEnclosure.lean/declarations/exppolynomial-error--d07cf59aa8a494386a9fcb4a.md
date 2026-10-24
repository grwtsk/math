# expPolynomial_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfd6b291-c14a-4569-2563-3e5f79438b68",
  "kind": "theorem",
  "lexical_name": "expPolynomial_error",
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
  "slug": "exppolynomial-error--d07cf59aa8a494386a9fcb4a",
  "source": {
    "blob": "89aa19c7c25a7b862d4113d93611f13574de58f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d07cf59aa8a494386a9fcb4abaf04f35976037cb8b3400d8337535f363f7579f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfd6b291-c14a-4569-2563-3e5f79438b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expPolynomial_error (q : ℂ) (r : ℝ) (K : ℕ)
    (hr : ‖q‖ ≤ r) (hK : r / ((K : ℝ) + 1) ≤ 1 / 2) :
    ‖Complex.exp q - expPolynomial q K‖ ≤ expRemainder r K := by
  have hr0 : 0 ≤ r := (norm_nonneg q).trans hr
  have hq : ‖q‖ / (K.succ : ℝ) ≤ 1 / 2 := by
    simp only [Nat.cast_succ]
    exact (div_le_div_of_nonneg_right hr (by positivity)).trans hK
  have hb := Complex.exp_bound' (x := q) (n := K) hq
  change ‖Complex.exp q - expPolynomial q K‖ ≤ _ at hb
  refine hb.trans ?_
  unfold expRemainder
  have hp : ‖q‖ ^ K ≤ r ^ K := pow_le_pow_left₀ (norm_nonneg q) hr K
  have hd := div_le_div_of_nonneg_right hp (show (0 : ℝ) ≤ K.factorial by positivity)
  calc
    ‖q‖ ^ K / ↑K.factorial * 2 ≤ r ^ K / ↑K.factorial * 2 :=
      mul_le_mul_of_nonneg_right hd (by norm_num)
    _ = 2 * r ^ K / ↑K.factorial := by ring

/-- A small argument displacement has its own complete exponential error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteExponentialEnclosure.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89aa19c7c25a7b862d4113d93611f13574de58f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
