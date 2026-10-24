# complementary_derivative_integrable_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db48827-3930-2335-fc44-f1fbfaf42e45",
  "kind": "theorem",
  "lexical_name": "complementary_derivative_integrable_positive",
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
  "slug": "complementary-derivative-integrable-positive--b8fe774056b53e109c75373b",
  "source": {
    "blob": "f277514263a5f5395f5f022a0aaa00a01b3d71c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variantb75a86c8e4de0027d73f9d3ccb2594ccace348dc214eb28fef8b3961e21f0923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8fe774056b53e109c75373b30bec6600098f1fd3148053aaa3d5a3202f00640",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variantb75a86c8e4de0027d73f9d3ccb2594ccace348dc214eb28fef8b3961e21f0923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db48827-3930-2335-fc44-f1fbfaf42e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementary_derivative_integrable_positive (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioi (0 : ℝ)) := by
  have hl : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioo (0 : ℝ) 1) := by
    apply integrableOn_zero.congr_fun
    · intro x hx
      dsimp only
      rw [complementaryCumulative_zero_below_one _ hx.2, zero_mul]
    · exact measurableSet_Ioo
  have hi : IntegrableOn (fun x => complementaryCumulative (vaughanCutoff A) x *
      deriv (plainProfile A 1) x) (Ioc (0 : ℝ) 1) :=
    (integrableOn_Ioc_iff_integrableOn_Ioo).mpr hl
  have h := hi.union (complementary_derivative_integrable_Ioi hA)
  rw [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] at h
  exact h

/-- Full L-B keeps the genuine head and the closed unit while extending its ordinary integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variantb75a86c8e4de0027d73f9d3ccb2594ccace348dc214eb28fef8b3961e21f0923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variantb75a86c8e4de0027d73f9d3ccb2594ccace348dc214eb28fef8b3961e21f0923.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f277514263a5f5395f5f022a0aaa00a01b3d71c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
