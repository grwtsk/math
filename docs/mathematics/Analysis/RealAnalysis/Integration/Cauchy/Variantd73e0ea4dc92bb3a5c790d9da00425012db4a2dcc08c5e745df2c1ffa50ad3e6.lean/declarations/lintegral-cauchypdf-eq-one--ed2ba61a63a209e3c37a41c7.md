# lintegral_cauchyPDF_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5a72d70-0a26-0fc7-4dc7-b5d8a08d92ab",
  "kind": "lemma",
  "lexical_name": "lintegral_cauchyPDF_eq_one",
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
  "slug": "lintegral-cauchypdf-eq-one--ed2ba61a63a209e3c37a41c7",
  "source": {
    "blob": "a0e1cc311679e0c7b5736beb3814d994c6ca3be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2ba61a63a209e3c37a41c7462240be866824984f803311514108eaa89d6e71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a72d70-0a26-0fc7-4dc7-b5d8a08d92ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_cauchyPDF_eq_one (x₀ : ℝ) {γ : ℝ≥0} (hγ : γ ≠ 0) :
    ∫⁻ x, cauchyPDF x₀ γ x = 1 := by
  unfold cauchyPDF
  rw [← ENNReal.toReal_eq_one_iff, ← integral_eq_lintegral_of_nonneg_ae
    (ae_of_all _ fun x ↦ (cauchyPDF_pos x₀ hγ x).le) (by fun_prop),
    integral_cauchyPDFReal_eq_one x₀ hγ]

@[deprecated (since := "2026-03-06")]
alias _root_Probability.lintegral_cauchyPDF_eq_one := lintegral_cauchyPDF_eq_one

end CauchyPDF

section CauchyMeasure

/-- A Cauchy distribution on `ℝ` with location parameter `x₀` and scale parameter `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cauchy/Variantd73e0ea4dc92bb3a5c790d9da00425012db4a2dcc08c5e745df2c1ffa50ad3e6.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e1cc311679e0c7b5736beb3814d994c6ca3be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
