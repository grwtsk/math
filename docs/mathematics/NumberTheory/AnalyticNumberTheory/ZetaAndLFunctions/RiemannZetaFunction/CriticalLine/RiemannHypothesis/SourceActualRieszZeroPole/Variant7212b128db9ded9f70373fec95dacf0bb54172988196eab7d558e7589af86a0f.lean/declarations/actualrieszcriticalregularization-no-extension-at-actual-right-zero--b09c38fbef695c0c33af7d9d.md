# actualRieszCriticalRegularization_no_extension_at_actual_right_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3da9ac-4ebf-473d-9d01-7b1293d9ce90",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalRegularization_no_extension_at_actual_right_zero",
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
  "slug": "actualrieszcriticalregularization-no-extension-at-actual-right-zero--b09c38fbef695c0c33af7d9d",
  "source": {
    "blob": "cba654e3fe2c6d29f03b256e392194431f79c94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant7212b128db9ded9f70373fec95dacf0bb54172988196eab7d558e7589af86a0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09c38fbef695c0c33af7d9dbd125c003ea42bebfab5d1d613be29832abff463",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant7212b128db9ded9f70373fec95dacf0bb54172988196eab7d558e7589af86a0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3da9ac-4ebf-473d-9d01-7b1293d9ce90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalRegularization_no_extension_at_actual_right_zero
    (ρ : (zetaZeros zetaSeam).carrier) (hρ : 1 / 2 < (ρ : ℂ).re) :
    ¬ ∃ g : ℂ → ℂ, AnalyticAt ℂ g ((ρ : ℂ) - 1 / 2) ∧
      actualRieszCriticalRegularization =ᶠ[𝓝[≠] ((ρ : ℂ) - 1 / 2)] g := by
  intro hg
  have hn := (regularization_meromorphic ρ hρ).meromorphicOrderAt_nonneg_iff.mpr hg
  rw [actualRieszCriticalRegularization_order_at_actual_right_zero ρ hρ] at hn
  exact (not_le_of_gt (show (-1 : WithTop ℤ) < 0 from
    WithTop.coe_lt_coe.mpr (by norm_num))) hn

end FormalResearch.RiemannHypothesis.SourceActualRieszZeroPole
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant7212b128db9ded9f70373fec95dacf0bb54172988196eab7d558e7589af86a0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant7212b128db9ded9f70373fec95dacf0bb54172988196eab7d558e7589af86a0f.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba654e3fe2c6d29f03b256e392194431f79c94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
