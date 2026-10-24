# jointFourierIntegrand_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:870975e8-025a-6a0e-a858-49939d6002b2",
  "kind": "theorem",
  "lexical_name": "jointFourierIntegrand_integral",
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
  "slug": "jointfourierintegrand-integral--6437bf5dc063e666e0b8b103",
  "source": {
    "blob": "9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6437bf5dc063e666e0b8b10339e636d6dacde53288b4f25dab5a5048956a3700",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:870975e8-025a-6a0e-a858-49939d6002b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointFourierIntegrand_integral {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    (∫ ξ, jointFourierIntegrand A s t c d ξ) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        ∫ ξ : ℝ, Real.cos (ξ * (Real.log m + Real.log n)) * sourceFourierSquare A ξ := by
  simp_rw [jointFourierIntegrand_eq]
  rw [integral_finsetSum s]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [integral_finsetSum t]
    · apply Finset.sum_congr rfl
      intro n hn
      exact integral_const_mul (c m * d n) _
    · intro n hn
      exact (source_cosine_product_integrable hA (Real.log m + Real.log n)).const_mul (c m * d n)
  · intro m hm
    exact integrable_finsetSum t (fun n hn ↦
      (source_cosine_product_integrable hA (Real.log m + Real.log n)).const_mul (c m * d n))

/-- The entire signed finite correlation rectangle has an exact Fourier representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
