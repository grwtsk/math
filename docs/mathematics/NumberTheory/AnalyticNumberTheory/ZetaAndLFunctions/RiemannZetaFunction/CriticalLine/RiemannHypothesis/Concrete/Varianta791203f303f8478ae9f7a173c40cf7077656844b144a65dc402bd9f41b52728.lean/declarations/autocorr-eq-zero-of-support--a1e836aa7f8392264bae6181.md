# autocorr_eq_zero_of_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c01dda163263b4af9bf107adba3dd84f9297a0e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd457901-2255-0f4e-ab2b-164e30a86b7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1642f406-3b15-e61e-f8b5-6daacef81ad0",
  "kind": "lemma",
  "lexical_name": "autocorr_eq_zero_of_support",
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
  "slug": "autocorr-eq-zero-of-support--a1e836aa7f8392264bae6181",
  "source": {
    "blob": "c01dda163263b4af9bf107adba3dd84f9297a0e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e836aa7f8392264bae6181cf7ac70b974751412c6d83f546cd8b09cd77327c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1642f406-3b15-e61e-f8b5-6daacef81ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma autocorr_eq_zero_of_support {h : ℝ → ℝ} {M : ℝ}
    (hsupp : ∀ u : ℝ, M ≤ |u| → h u = 0) {y : ℝ} (hy : 2 * M ≤ |y|) (_hM : 0 ≤ M) :
    Params.autocorr h y = 0 := by
  show ∫ u, h u * h (u + y) = 0
  have hz : ∀ u : ℝ, h u * h (u + y) = 0 := by
    intro u
    rcases le_or_gt M (|u|) with hu | hu
    · rw [hsupp u hu, zero_mul]
    · have : M ≤ |u + y| := by
        have h1 := abs_sub_abs_le_abs_sub y (-u)
        rw [abs_neg, sub_neg_eq_add] at h1
        have h2 : |y + u| = |u + y| := by rw [add_comm]
        rw [h2] at h1
        linarith
      rw [hsupp _ this, mul_zero]
  simp only [hz, MeasureTheory.integral_zero]

set_option maxHeartbeats 1600000 in
/-- **FactsDChi for the concrete Montgomery–Taylor data of L(s,χ).** Inputs: P.Valid, 1 ≤ q,
unimodular coefficients, PaperInputsChi (H-RvM(χ), H-Γ(χ), H-cheb, H-cheb-coprime, H-MV), and the
CoreD taper facts eventually (BridgeD). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Varianta791203f303f8478ae9f7a173c40cf7077656844b144a65dc402bd9f41b52728.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01dda163263b4af9bf107adba3dd84f9297a0e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
