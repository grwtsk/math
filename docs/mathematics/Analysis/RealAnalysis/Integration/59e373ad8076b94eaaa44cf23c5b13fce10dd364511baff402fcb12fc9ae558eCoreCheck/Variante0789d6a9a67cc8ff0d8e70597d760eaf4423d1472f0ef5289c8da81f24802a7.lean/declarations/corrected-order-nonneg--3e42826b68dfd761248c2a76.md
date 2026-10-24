# corrected_order_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:028c00cc-eb6e-e184-d882-ab3043ee74e3",
  "kind": "theorem",
  "lexical_name": "corrected_order_nonneg",
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
  "slug": "corrected-order-nonneg--3e42826b68dfd761248c2a76",
  "source": {
    "blob": "1308daae6d40ab972002d8ddd5ddfb489075e67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 289,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e42826b68dfd761248c2a76d0cda3f757f5d986d666b48e8d80431ce2334069",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028c00cc-eb6e-e184-d882-ab3043ee74e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_order_nonneg
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt (correctedTransform m C) s := by
  apply
    order_nonneg_of_continuation
      (X := id) (μ := sourceMeasure m C)
      (by fun_prop)
      (id_nonneg_ae m C)
      ?_
      (correctedTransform m C)
      (correctedTransform_meromorphic m C)
      (correctedTransform_analytic_positive_real m C)
      ?_
      s hs
  · intro t ht
    exact real_laplace_integrable m C hpos t ht
  · intro z hz
    exact
      (complexMGF_eq_correctedTransform
        m C hpos z hz).symm

/-! ## Exact target passage -/

end
end FormalResearch.RiemannHypothesis.Landau.PolynomialBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1308daae6d40ab972002d8ddd5ddfb489075e67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
