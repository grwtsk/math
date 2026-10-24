# corrected_order_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d38320b376954ce5aeabe2d437155d679d514c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:149fb23d-814f-a05b-f079-11a8ae81825d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8511865c-2e08-c072-df2a-16c7afec5207",
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
  "slug": "corrected-order-nonneg--ef59a0fc577eb93083329aad",
  "source": {
    "blob": "7d38320b376954ce5aeabe2d437155d679d514c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef59a0fc577eb93083329aad47d0905cdae0eba6e4dd061c8727e07b9d76f87a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8511865c-2e08-c072-df2a-16c7afec5207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–309.

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

/-- Any one fixed finite polynomial upper bound for the unchanged residual
forces Mathlib's exact RH proposition. The arithmetic bound is the sole research premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d38320b376954ce5aeabe2d437155d679d514c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
