# actualRieszCriticalRegularization_order_at_actual_right_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31e24b27-8b63-16aa-a4c8-0633335bd808",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalRegularization_order_at_actual_right_zero",
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
  "slug": "actualrieszcriticalregularization-order-at-actual-right-zero--8e85ccd97989616562107499",
  "source": {
    "blob": "0f2456b37e3798be4484a6de9babc2e6ae27d318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e85ccd9798961656210749984e292682b15d408765c44090c1e59cb4e79b73c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31e24b27-8b63-16aa-a4c8-0633335bd808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalRegularization_order_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    meromorphicOrderAt actualRieszCriticalRegularization ((ρ : ℂ) - 1 / 2) = -1 := by
  have hd : AnalyticAt ℂ (fun z : ℂ => z ^ 2) ((ρ : ℂ) - 1 / 2) := by fun_prop
  have hod : meromorphicOrderAt (fun z : ℂ => z ^ 2) ((ρ : ℂ) - 1 / 2) = 0 := by
    rw [hd.meromorphicOrderAt_eq, hd.analyticOrderAt_eq_zero.mpr
      (pow_ne_zero 2 (actual_right_point_ne_zero ρ hρ))]
    simp
  rw [meromorphicOrderAt_congr (regularization_eventually_eq ρ hρ)]
  change meromorphicOrderAt ((fun z : ℂ => actualRieszCriticalNumerator z -
    (actualRieszLimitingLinearCenter : ℂ) - actualRieszLocalConstantCenter * z) /
    (fun z : ℂ => z ^ 2)) ((ρ : ℂ) - 1 / 2) = -1
  rw [meromorphicOrderAt_div (centered_numerator_meromorphic ρ) hd.meromorphicAt,
    centered_numerator_order ρ, hod, sub_zero]

/-- Local regularization gives no holomorphic punctured-germ continuation through such a zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2456b37e3798be4484a6de9babc2e6ae27d318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
