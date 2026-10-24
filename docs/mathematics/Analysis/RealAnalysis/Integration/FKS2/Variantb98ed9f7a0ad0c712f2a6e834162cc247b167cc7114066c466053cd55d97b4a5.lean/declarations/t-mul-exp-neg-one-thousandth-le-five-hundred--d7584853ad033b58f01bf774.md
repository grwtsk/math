# t_mul_exp_neg_one_thousandth_le_five_hundred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30086541-75e2-a50a-418a-f3d49fc5ac72",
  "kind": "lemma",
  "lexical_name": "t_mul_exp_neg_one_thousandth_le_five_hundred",
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
  "slug": "t-mul-exp-neg-one-thousandth-le-five-hundred--d7584853ad033b58f01bf774",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 750,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7584853ad033b58f01bf7748382d476e23832eeb2df63cee023bfc81df6c2fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30086541-75e2-a50a-418a-f3d49fc5ac72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma t_mul_exp_neg_one_thousandth_le_five_hundred
    (t : ℝ) (_ht : t ≥ 1000) :
    t * exp (-(1 / 1000 : ℝ) * t) ≤ 500 := by
  have htwo : 2 * (t / 1000) ≤ exp (t / 1000) := Real.two_mul_le_exp
  have ht_le : t ≤ 500 * exp (t / 1000) := by
    have hmul := mul_le_mul_of_nonneg_left htwo (by norm_num : (0 : ℝ) ≤ 500)
    have hmul' : 500 * (2 * (t / 1000)) ≤ 500 * exp (t / 1000) := by
      simpa [mul_assoc, mul_left_comm, mul_comm] using hmul
    calc
      t = 500 * (2 * (t / 1000)) := by
        ring_nf
      _ ≤ 500 * exp (t / 1000) := hmul'
  have hdiv : t / exp (t / 1000) ≤ 500 := (div_le_iff₀ (Real.exp_pos _)).2 ht_le
  have hdiv' : t * (exp (t / 1000))⁻¹ ≤ 500 := by
    simpa [div_eq_mul_inv] using hdiv
  have hexp_inv : exp (-(1 / 1000 : ℝ) * t) = (exp (t / 1000))⁻¹ := by
    rw [show (-(1 / 1000 : ℝ) * t) = -(t / 1000) by ring_nf, Real.exp_neg]
  calc
    t * exp (-(1 / 1000 : ℝ) * t) = t * (exp (t / 1000))⁻¹ := by
      rw [hexp_inv]
    _ ≤ 500 := hdiv'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
