# stdAddChar_parseval_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c9bb0c3-eb54-38b8-71e4-72bb65670a12",
  "kind": "theorem",
  "lexical_name": "stdAddChar_parseval_norm_sq",
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
  "slug": "stdaddchar-parseval-norm-sq--7ff22e90b2cfa509f825b498",
  "source": {
    "blob": "2014e78cd3486736ca7ad3be6001ba99a09f6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ff22e90b2cfa509f825b49813c1f2a7b1ab3dd076aed373f43362a55808605e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c9bb0c3-eb54-38b8-71e4-72bb65670a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdAddChar_parseval_norm_sq
    (N : ℕ) [NeZero N]
    (F : ZMod N → ℂ) :
    (∑ k : ZMod N,
      ‖∑ a : ZMod N,
        F a * ZMod.stdAddChar (k * a)‖ ^ 2) =
      (N : ℝ) * ∑ a : ZMod N, ‖F a‖ ^ 2 := by
  classical
  have hcomplex :
      (∑ k : ZMod N,
        conj (∑ a : ZMod N,
          F a * ZMod.stdAddChar (k * a)) *
        (∑ c : ZMod N,
          F c * ZMod.stdAddChar (k * c))) =
        (N : ℂ) *
          ∑ a : ZMod N, conj (F a) * F a := by
    simp_rw [map_sum, map_mul]
    conv_lhs => simp only [Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    conv_lhs =>
      arg 2
      ext a
      rw [Finset.sum_comm]
    rw [Finset.sum_comm]
    calc
      (∑ a : ZMod N,
        ∑ c : ZMod N,
          ∑ k : ZMod N,
            (conj (F a) *
              conj (ZMod.stdAddChar (k * a))) *
              (F c * ZMod.stdAddChar (k * c))) =
        ∑ a : ZMod N,
          ∑ c : ZMod N,
            (conj (F a) * F c) *
              (∑ k : ZMod N,
                conj (ZMod.stdAddChar (k * a)) *
                  ZMod.stdAddChar (k * c)) := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro c _hc
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro k _hk
          ring
      _ = ∑ a : ZMod N,
          ∑ c : ZMod N,
            (conj (F a) * F c) *
              (if a = c then (N : ℂ) else 0) := by
          simp_rw [stdAddChar_conj_mul_orthogonality]
      _ = (N : ℂ) *
          ∑ a : ZMod N, conj (F a) * F a := by
          simp [Finset.mul_sum, mul_comm, mul_left_comm]
  simp_rw [← Complex.normSq_eq_conj_mul_self] at hcomplex
  have hreal : (∑ k : ZMod N, Complex.normSq (∑ a : ZMod N,
      F a * ZMod.stdAddChar (k * a))) =
      (N : ℝ) * ∑ a : ZMod N, Complex.normSq (F a) := by
    exact_mod_cast hcomplex
  simpa only [Complex.normSq_eq_norm_sq] using hreal

/-- Parseval for the exact parity-residue regrouping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2014e78cd3486736ca7ad3be6001ba99a09f6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
