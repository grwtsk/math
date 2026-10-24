# symL_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0178b4d1-1180-3fc4-15af-5e9b2295d1bd",
  "kind": "lemma",
  "lexical_name": "symL_analyticAt",
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
  "slug": "syml-analyticat--ddfe71bcc0f9149f408001dd",
  "source": {
    "blob": "aff84b91dc54960a7cf959c64fc17e59bb110fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddfe71bcc0f9149f408001dd268f622fb0acf2e32ac4235985aa2d3ff9548856",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0178b4d1-1180-3fc4-15af-5e9b2295d1bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symL_analyticAt (hχ1 : χ ≠ 1) (T : ℝ) (z : ℂ) : AnalyticAt ℂ (symL χ T) z := by
  have hinv : χ⁻¹ ≠ 1 := fun h => hχ1 (inv_eq_one.mp h)
  unfold symL
  have ha : AnalyticAt ℂ (fun z : ℂ => χ.LFunction (z + T * I)) z :=
    (LFunction_analyticOnNhd hχ1 _ (mem_univ _)).comp_of_eq (by fun_prop) rfl
  have hb : AnalyticAt ℂ (fun z : ℂ => χ⁻¹.LFunction (z - T * I)) z :=
    (LFunction_analyticOnNhd hinv _ (mem_univ _)).comp_of_eq (by fun_prop) rfl
  exact (ha.add hb).div_const

/-- for real σ, g_T(σ) is the real number Re L(σ + iT, χ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff84b91dc54960a7cf959c64fc17e59bb110fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
