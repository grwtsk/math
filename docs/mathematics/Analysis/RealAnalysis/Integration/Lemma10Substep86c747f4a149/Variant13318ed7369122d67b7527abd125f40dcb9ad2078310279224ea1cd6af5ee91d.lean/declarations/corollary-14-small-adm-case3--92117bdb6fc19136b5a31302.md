# corollary_14_small_adm_case3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42a2ae5e-eaef-39de-11d0-e01b32c27ecd",
  "kind": "lemma",
  "lexical_name": "corollary_14_small_adm_case3",
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
  "slug": "corollary-14-small-adm-case3--92117bdb6fc19136b5a31302",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1210,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92117bdb6fc19136b5a31302a366deeaa2175bc2f3107cb0c0c3c901147ba4cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42a2ae5e-eaef-39de-11d0-e01b32c27ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1210–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma corollary_14_small_adm_case3 (u : ℝ) (hu_pos : 0 < u) (hu94' : (9 / 4 : ℝ) < u) (hu_le : u ≤ 30 / 5.5666305) :
    (1 : ℝ) ≤ 121.0961 * (u * Real.sqrt u) * Real.exp (-2 * Real.sqrt u) := by
  have hsqrt_lower : (3 / 2 : ℝ) ≤ Real.sqrt u :=
    (Real.le_sqrt (by norm_num) hu_pos.le).2 (by nlinarith [hu94'])
  have hu_mul : (27 / 8 : ℝ) ≤ u * Real.sqrt u := by
    nlinarith [hu94', hsqrt_lower]
  have hsqrt_upper : Real.sqrt u ≤ (47 / 20 : ℝ) :=
    (Real.sqrt_le_iff).2 ⟨by norm_num, by nlinarith [hu_le]⟩
  have h_exp_base : (1 / 115 : ℝ) ≤ Real.exp (- (47 / 10 : ℝ)) := by
    apply inv_le_exp_neg (by norm_num)
    have hlog115 : (47 / 10 : ℝ) ≤ Real.log 115 := by
      have h115 : (115 : ℝ) = 23 * 5 := by norm_num
      rw [h115, Real.log_mul (by norm_num) (by norm_num)]
      nlinarith [LogTables.log_23_gt, LogTables.log_5_gt]
    linarith
  have h_exp_u : Real.exp (- (47 / 10 : ℝ)) ≤ Real.exp (-2 * Real.sqrt u) :=
    Real.exp_le_exp.mpr (by linarith)
  have h_exp : (1 / 115 : ℝ) ≤ Real.exp (-2 * Real.sqrt u) := le_trans h_exp_base h_exp_u
  nlinarith [hu_mul, h_exp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L1210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
