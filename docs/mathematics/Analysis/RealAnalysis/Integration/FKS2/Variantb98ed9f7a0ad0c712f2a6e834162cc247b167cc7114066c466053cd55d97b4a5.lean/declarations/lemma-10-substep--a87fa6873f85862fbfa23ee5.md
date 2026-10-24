# lemma_10_substep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cca0647-a293-c10e-b5ce-ff9df57b543d",
  "kind": "theorem",
  "lexical_name": "lemma_10_substep",
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
  "slug": "lemma-10-substep--a87fa6873f85862fbfa23ee5",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87fa6873f85862fbfa23ee5a85e1cbc2720e6b09950c0ed7e54e4a8e9d026fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cca0647-a293-c10e-b5ce-ff9df57b543d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_10_substep {a b c x : ℝ} (hx : x > 1) :
  deriv (g_bound a b c) x =
    (-a * log x + b + (c / 2) * sqrt (log x)) * x ^ (-a - 1) * (log x) ^ (b - 1) * exp (c * sqrt (log x)) := by
      have : log x ≠ 0 := by simp; grind
      have h_prod_rule : deriv (fun x ↦ x ^ (-a) * (log x) ^ b * exp (c * sqrt (log x))) x =
        (deriv (fun x ↦ x ^ (-a)) x) * (log x) ^ b * exp (c * sqrt (log x)) +
        x ^ (-a) * (deriv (fun x ↦ (log x) ^ b) x) * exp (c * sqrt (log x)) +
        x ^ (-a) * (log x) ^ b * (deriv (fun x ↦ exp (c * sqrt (log x))) x) := by
          rw [deriv_fun_mul, deriv_fun_mul]
          · ring
          all_goals fun_prop (disch := grind)
      unfold g_bound
      rw [h_prod_rule]
      norm_num [ show x ≠ 0 by linarith, show log x ≠ 0 by exact ne_of_gt ( log_pos hx ), sqrt_eq_rpow, rpow_sub_one, mul_assoc, mul_comm, mul_left_comm, div_eq_mul_inv ] ; ring_nf
      norm_num [ ne_of_gt ( log_pos hx ) ]
      rw [_root_.deriv_exp (by fun_prop (disch := grind))]
      simp only [deriv_const_mul_field']
      rw [_root_.deriv_rpow_const (by fun_prop (disch := grind)) (by grind), deriv_log]
      ring_nf
      rw [ show ( -1 / 2 : ℝ  ) = ( 1 / 2 : ℝ ) - 1 by norm_num, rpow_sub ( log_pos hx ) ] ; norm_num ; ring

@[blueprint
  "fks2-lemma-10-substep-2"
  (title := "FKS2 Sublemma 10-2")
  (statement := /-- $\frac{d}{dx} g(a, b, c, x) $ is negative when $-au^2 + \frac{c}{2}u + b < 0$, where $u = \sqrt{\log(x)}$.
  -/)
  (proof := /-- Clear from previous sublemma. -/)
  (latexEnv := "sublemma")
  (discussion := 611)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
