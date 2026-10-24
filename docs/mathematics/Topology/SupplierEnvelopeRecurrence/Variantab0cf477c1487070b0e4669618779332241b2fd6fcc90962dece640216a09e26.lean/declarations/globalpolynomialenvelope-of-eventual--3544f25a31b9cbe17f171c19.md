# globalPolynomialEnvelope_of_eventual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b20024-9c36-bf1f-606a-47ea8ce6b734",
  "kind": "theorem",
  "lexical_name": "globalPolynomialEnvelope_of_eventual",
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
  "slug": "globalpolynomialenvelope-of-eventual--3544f25a31b9cbe17f171c19",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 566,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3544f25a31b9cbe17f171c197e56a78e64d18a5d9c1953011e76c51f144b7b98",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b20024-9c36-bf1f-606a-47ea8ce6b734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalPolynomialEnvelope_of_eventual {W : ℝ → ℝ} {R D p : ℝ}
    (hW : Continuous W) (hD : 0 ≤ D) (hp : 0 ≤ p)
    (hbound : ∀ T : ℝ, R ≤ T → runningPositiveMaximum W T ≤ D * (1 + T) ^ p) :
    ∃ D' : ℝ, 0 ≤ D' ∧ ∀ T : ℝ, 0 ≤ T →
      runningPositiveMaximum W T ≤ D' * (1 + T) ^ p := by
  let D' : ℝ := max D (runningPositiveMaximum W R)
  have hD' : 0 ≤ D' := hD.trans (le_max_left _ _)
  refine ⟨D', hD', ?_⟩
  intro T hT
  have hpow₀ : 0 ≤ (1 + T) ^ p := Real.rpow_nonneg (by linarith) p
  by_cases hRT : R ≤ T
  · exact (hbound T hRT).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) hpow₀)
  · have hlevel := runningPositiveMaximum_mono hW (le_of_not_ge hRT)
    have hpow : 1 ≤ (1 + T) ^ p := Real.one_le_rpow (by linarith) hp
    have hconstant : D' ≤ D' * (1 + T) ^ p := by
      simpa only [mul_one] using mul_le_mul_of_nonneg_left hpow hD'
    exact hlevel.trans ((le_max_right _ _).trans hconstant)

end
end GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
