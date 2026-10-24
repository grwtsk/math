# fourier_integral_eq_half_sub_half_period_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73265a9a-c477-565d-3935-180620723603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ae696c8-0a1b-339c-6c4a-63ffe25d8a3c",
  "kind": "theorem",
  "lexical_name": "fourier_integral_eq_half_sub_half_period_translate",
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
  "slug": "fourier-integral-eq-half-sub-half-period-translate--b0cf3ea2f2a485afc5fe0dad",
  "source": {
    "blob": "ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0cf3ea2f2a485afc5fe0dad2773fda6c3f8ffa1e1d5d517026911961476a460",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ae696c8-0a1b-339c-6c4a-63ffe25d8a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_integral_eq_half_sub_half_period_translate {w : V} (hw : w ≠ 0)
    (hf : Integrable f) :
    ∫ v : V, e[-⟪v, w⟫] • f v = (1 / (2 : ℂ)) • ∫ v : V, e[-⟪v, w⟫] • (f v - f (v + i w)) := by
  simp_rw [smul_sub]
  rw [integral_sub, fourier_integral_half_period_translate hw, sub_eq_add_neg, neg_neg, ←
    two_smul ℂ _, ← @smul_assoc _ _ _ _ _ _ (IsScalarTower.left ℂ), smul_eq_mul]
  norm_num
  exacts [(fourier_integrand_integrable w).mp hf,
    (fourier_integrand_integrable w).mp (hf.comp_add_right _)]
#align fourier_integral_eq_half_sub_half_period_translate fourier_integral_eq_half_sub_half_period_translate

/-- Riemann-Lebesgue Lemma for continuous and compactly-supported functions: the integral
`∫ v, exp (-2 * π * ⟪w, v⟫ * I) • f v` tends to 0 wrt `cocompact V`. Note that this is primarily
of interest as a preparatory step for the more general result
`tendsto_integral_exp_inner_smul_cocompact` in which `f` can be arbitrary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant623e55d84a400530a16562af870a9a124096c5375cb0f7e604c08a50eddecd2d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce581cdfc3f8c3a9bd3f5758c74dd1319ae93e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
