# lemma_10c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5156b83-4c74-c9e9-590d-0f7203957e3d",
  "kind": "theorem",
  "lexical_name": "lemma_10c",
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
  "slug": "lemma-10c--3feb29ec2d6c864a5ef0c218",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3feb29ec2d6c864a5ef0c2186d0f30039f0c70f9499b22b3ad22deabad8818f5",
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

Occurrence: `result:e5156b83-4c74-c9e9-590d-0f7203957e3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_10c {b c : ℝ} (hb : b < 0) (hc : c > 0) :
    StrictAntiOn (g_bound 0 b c) (Set.Ioo 1 (exp ((-2 * b / c) ^ 2))) := by
  intro x hx y hy hxy
  simp only [g_bound, neg_zero, rpow_zero, one_mul]
  rw [rpow_def_of_pos <| log_pos hy.1, rpow_def_of_pos <| log_pos hx.1, ← exp_add, ← exp_add, exp_lt_exp]
  have huy_bound : sqrt (log y) < -2 * b / c := by
    rw [← sqrt_sq (div_pos (by linarith) hc).le]
    exact sqrt_lt_sqrt (log_pos hy.1).le <| (log_exp _).symm.trans_gt (log_lt_log (by linarith [hy.1]) hy.2)
  rw [show log (log x) = 2 * log (sqrt (log x)) from by rw [log_sqrt (log_pos hx.1).le]; ring,
    show log (log y) = 2 * log (sqrt (log y)) from by rw [log_sqrt (log_pos hy.1).le]; ring]
  have hderiv_neg : 2 * b / sqrt (log y) + c < 0 := by
    have : c * sqrt (log y) < -2 * b := by
      calc c * sqrt (log y) < c * (-2 * b / c) := mul_lt_mul_of_pos_left huy_bound hc
        _ = -2 * b := by field_simp
    have h2 : 2 * b / sqrt (log y) < -c := by rw [div_lt_iff₀ <| sqrt_pos.mpr <| log_pos hy.1]; linarith
    linarith
  have hconcave : log (sqrt (log y)) - log (sqrt (log x)) ≥ (sqrt (log y) - sqrt (log x)) / sqrt (log y) := by
    have := one_sub_inv_le_log_of_pos <| div_pos (sqrt_pos.mpr <| log_pos hy.1) <| sqrt_pos.mpr <| log_pos hx.1
    simp only [inv_div] at this
    calc log (sqrt (log y)) - log (sqrt (log x)) = log (sqrt (log y) / sqrt (log x)) := by
          rw [log_div (sqrt_pos.mpr <| log_pos hy.1).ne' (sqrt_pos.mpr <| log_pos hx.1).ne']
      _ ≥ 1 - sqrt (log x) / sqrt (log y) := this
      _ = (sqrt (log y) - sqrt (log x)) / sqrt (log y) := by rw [sub_div, div_self (sqrt_pos.mpr <| log_pos hy.1).ne']
  calc 2 * log (sqrt (log y)) * b + c * sqrt (log y)
      _ ≤ 2 * b * (log (sqrt (log x)) + (sqrt (log y) - sqrt (log x)) / sqrt (log y)) + c * sqrt (log y) := by nlinarith [hconcave]
      _ = 2 * b * log (sqrt (log x)) + (sqrt (log y) - sqrt (log x)) * (2 * b / sqrt (log y) + c) + c * sqrt (log x) := by field_simp; ring
      _ < 2 * log (sqrt (log x)) * b + c * sqrt (log x) := by nlinarith [hderiv_neg, sqrt_lt_sqrt (log_pos hx.1).le <| log_lt_log (by linarith [hx.1]) hxy]

@[blueprint
  "fks2-corollary-11"
  (title := "FKS2 Corollary 11")
  (statement := /--
  If $B \geq 1 + C^2 / 16R$ then $g(1,1-B,C/\sqrt{R},x)$ is decreasing in $x$. -/)
  (proof := /-- This follows from Lemma \ref{fks2-lemma-10a} applied with $a=1$, $b=1-B$ and $c=C/\sqrt{R}$. -/)
  (latexEnv := "corollary")
  (discussion := 615)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
