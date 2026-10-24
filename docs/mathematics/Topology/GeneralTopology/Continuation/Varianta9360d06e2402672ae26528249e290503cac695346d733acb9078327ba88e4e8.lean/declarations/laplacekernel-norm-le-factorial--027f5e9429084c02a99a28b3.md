# laplaceKernel_norm_le_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae81e62-a6cc-b5b3-e96a-153daa8abb73",
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
  "slug": "laplacekernel-norm-le-factorial--027f5e9429084c02a99a28b3",
  "source": {
    "blob": "34e2567e57a9c60b8a98af3dbea45e7c756e786f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027f5e9429084c02a99a28b371b3e439b115d9a8e9c53f43dfe93b7e8cd46517",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae81e62-a6cc-b5b3-e96a-153daa8abb73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–276.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Varianta9360d06e2402672ae26528249e290503cac695346d733acb9078327ba88e4e8.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e2567e57a9c60b8a98af3dbea45e7c756e786f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
