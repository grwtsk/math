# laplaceKernel_norm_le_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8684edb8-2d44-5a52-180e-f41120d8eefa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9688625-aeae-8f8e-62a1-cedbdfe9afd2",
  "kind": "theorem",
  "lexical_name": "laplaceKernel_norm_le_factorial",
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
  "slug": "laplacekernel-norm-le-factorial--568c17f19b18c7b894df4264",
  "source": {
    "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:568c17f19b18c7b894df4264eab6a861476ca6720937f670d230616ac5e0e704",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9688625-aeae-8f8e-62a1-cedbdfe9afd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplaceKernel_norm_le_factorial
    (k : ℕ) (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖laplaceKernel k w‖ ≤
      ((k + 1).factorial : ℝ) *
        Real.exp (-w.re) := by
  have hwpos : 0 < ‖w‖ := by linarith
  have hw0 : w ≠ 0 := norm_pos_iff.mp hwpos
  induction k with
  | zero =>
      rw [laplaceKernel_zero, norm_div,
        Complex.norm_exp]
      simp only [Complex.neg_re, Nat.zero_add,
        Nat.factorial_one, Nat.cast_one, one_mul]
      exact div_le_self (Real.exp_pos _).le hw
  | succ k ih =>
      rw [laplaceKernel_succ k w hw0, norm_div]
      calc
        _ ≤
            (‖Complex.exp (-w)‖ +
              ‖((k + 1 : ℕ) : ℂ) *
                laplaceKernel k w‖) / ‖w‖ := by
          gcongr
          exact norm_add_le _ _
        _ =
            (Real.exp (-w.re) +
              (k + 1 : ℕ) *
                ‖laplaceKernel k w‖) / ‖w‖ := by
          simp only [Complex.norm_exp, Complex.neg_re,
            norm_mul, Complex.norm_natCast]
        _ ≤
            (Real.exp (-w.re) +
              (k + 1 : ℕ) *
                (((k + 1).factorial : ℝ) *
                  Real.exp (-w.re))) / 1 := by
          gcongr
        _ ≤ _ := by
          have hf :
              (1 : ℝ) ≤ (k + 1).factorial := by
            exact_mod_cast Nat.factorial_pos (k + 1)
          simp only [div_one, Nat.factorial_succ,
            Nat.cast_mul, Nat.cast_add, Nat.cast_one] at *
          nlinarith [Real.exp_pos (-w.re)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
