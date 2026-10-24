# scaled_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a124e52b-28e9-6216-1d09-c074745d5f50",
  "kind": "theorem",
  "lexical_name": "scaled_step",
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
  "slug": "scaled-step--f4b88fa6ede87603e1db1c45",
  "source": {
    "blob": "84097121ab51680e49244ce224b05dc44aaaefaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b88fa6ede87603e1db1c45abd1466a83ec0568a0ba8c852c9ea0f18dc435d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a124e52b-28e9-6216-1d09-c074745d5f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_step {m N : ℕ} (hm : 1 ≤ m) (hN : 1 ≤ N) {s : ℂ} (hs : 0 < s.re) :
    remainder m (N : ℝ) s =
      ((_root_.bernoulli (m + 1) : ℂ) / ((m + 1).factorial : ℂ)) *
        PochhammerJet.value m s * (N : ℂ) ^ (-s - (m : ℂ)) +
      remainder (m + 1) (N : ℝ) s := by
  have hstep := tail_step hm hN hs
  have hm0 : (((m + 1 : ℕ) : ℂ)) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero m
  have hf0 : (m.factorial : ℂ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero m
  have ht : tail m (N : ℝ) s =
      ((s + m) * tail (m + 1) (N : ℝ) s -
        (_root_.bernoulli (m + 1) : ℂ) * (N : ℂ) ^ (-s - (m : ℂ))) /
      ((m + 1 : ℕ) : ℂ) := by
    apply (eq_div_iff hm0).mpr
    linear_combination hstep
  rw [remainder, ht]
  simp only [remainder, PochhammerJet.value_succ, Nat.factorial_succ, Nat.cast_mul]
  field_simp [hm0, hf0]
  ring

/-- The raw recurrence term is literally the correction of the maintained model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84097121ab51680e49244ce224b05dc44aaaefaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
