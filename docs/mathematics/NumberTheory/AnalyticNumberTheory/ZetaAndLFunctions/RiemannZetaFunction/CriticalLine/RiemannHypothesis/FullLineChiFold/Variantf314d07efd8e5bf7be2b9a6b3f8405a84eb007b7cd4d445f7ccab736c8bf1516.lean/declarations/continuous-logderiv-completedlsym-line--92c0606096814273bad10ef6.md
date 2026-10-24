# continuous_logDeriv_completedLSym_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52579a98-feda-64e6-c912-f02395229766",
  "kind": "lemma",
  "lexical_name": "continuous_logDeriv_completedLSym_line",
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
  "slug": "continuous-logderiv-completedlsym-line--92c0606096814273bad10ef6",
  "source": {
    "blob": "0a1f2077da3053d1ded61e3329bdfd5aded2096f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variantf314d07efd8e5bf7be2b9a6b3f8405a84eb007b7cd4d445f7ccab736c8bf1516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92c0606096814273bad10ef672a427481a1a5295ca1247ec0e1588cb2986a08d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variantf314d07efd8e5bf7be2b9a6b3f8405a84eb007b7cd4d445f7ccab736c8bf1516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52579a98-feda-64e6-c912-f02395229766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_logDeriv_completedLSym_line (hq : 1 < q) (hprim : χ.IsPrimitive) {c : ℝ} (hc1 : 1 < c) :
    Continuous fun t : ℝ => logDeriv (completedLSym χ) ((c : ℂ) + t * I) := by
  have hχ1 := ne_one_of_primitive hq hprim
  refine continuous_iff_continuousAt.mpr fun t => ?_
  have hΛ : AnalyticAt ℂ (completedLSym χ) ((c:ℂ) + t * I) :=
    (differentiable_completedLSym hχ1).analyticAt _
  have hne : completedLSym χ ((c:ℂ) + t * I) ≠ 0 := by
    intro h
    have hz := (completedLSym_eq_zero_iff hq hprim).mp h
    have : ((c:ℂ) + t * I).re < 1 := hz.2.2
    simp at this; linarith
  have h : ContinuousAt (logDeriv (completedLSym χ)) ((c:ℂ) + t * I) :=
    hΛ.deriv.continuousAt.div hΛ.continuousAt hne
  exact ContinuousAt.comp (f := fun t : ℝ => (c : ℂ) + t * I) h (by fun_prop)

/-- **(V) verticals fold for χ.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variantf314d07efd8e5bf7be2b9a6b3f8405a84eb007b7cd4d445f7ccab736c8bf1516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiFold/Variantf314d07efd8e5bf7be2b9a6b3f8405a84eb007b7cd4d445f7ccab736c8bf1516.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a1f2077da3053d1ded61e3329bdfd5aded2096f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
