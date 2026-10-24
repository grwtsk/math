# actualRieszCriticalNumerator_no_extension_at_actual_right_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41d6b7a1-2f83-7c72-229d-c180b7ccae45",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalNumerator_no_extension_at_actual_right_zero",
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
  "slug": "actualrieszcriticalnumerator-no-extension-at-actual-right-zero--a4d441341e8c6cc711b0c58d",
  "source": {
    "blob": "4a85e69cc5a9155f1ebab7d9f521d34084f2f573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant956636ed1355316d264bc0c30cb82adf91b1e40ad2563c1c0773a59c096db7b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d441341e8c6cc711b0c58dd8588538eef7f814c9c551452544fab9f6798f83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant956636ed1355316d264bc0c30cb82adf91b1e40ad2563c1c0773a59c096db7b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d6b7a1-2f83-7c72-229d-c180b7ccae45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalNumerator_no_extension_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    0 < ((ρ : ℂ) - 1 / 2).re ∧
      ¬ ∃ g : ℂ → ℂ, AnalyticAt ℂ g ((ρ : ℂ) - 1 / 2) ∧
        actualRieszCriticalNumerator =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)] g := by
  constructor
  · simp only [Complex.sub_re, Complex.div_ofNat_re]
    linarith
  · intro hg
    have hn := (numerator_meromorphic ρ).meromorphicOrderAt_nonneg_iff.mpr hg
    rw [actualRieszCriticalNumerator_order_at_actual_zero ρ] at hn
    norm_num at hn

end FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant956636ed1355316d264bc0c30cb82adf91b1e40ad2563c1c0773a59c096db7b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant956636ed1355316d264bc0c30cb82adf91b1e40ad2563c1c0773a59c096db7b1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a85e69cc5a9155f1ebab7d9f521d34084f2f573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
