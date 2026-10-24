# arithmetic_zero_equality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22c6f377-e847-9d08-5cb7-4cf3105da72b",
  "kind": "theorem",
  "lexical_name": "arithmetic_zero_equality",
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
  "slug": "arithmetic-zero-equality--402230c45be18e941d397632",
  "source": {
    "blob": "dae7e7a5878d2154e587f9c6f03c41af611b1678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 580,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402230c45be18e941d39763229b1f571c4d8543f3486d72b1f736c769fb5edf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c6f377-e847-9d08-5cb7-4cf3105da72b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_zero_equality : ArithmeticZeroEqualityObligation := by
  intro A hA
  let : positiveScaleAtZero.NeBot := positiveScaleAtZero_neBot
  have hleft := Complex.continuous_ofReal.continuousAt.tendsto.comp
    (arithmetic_form_tendsto A hA
      (fun ε : {ε : ℝ // 0 < ε} ↦ ε.val)
      (fun ε ↦ ε.property) positiveScale_tendsto_zero)
  have hright := zero_sum_tendsto A hA
    (fun ε : {ε : ℝ // 0 < ε} ↦ ε.val)
    (fun ε ↦ ε.property) positiveScale_tendsto_zero
  have hsmall :
      ∀ᶠ ε : {ε : ℝ // 0 < ε} in positiveScaleAtZero, ε.val ≤ 1 :=
    ((tendsto_order.1 positiveScale_tendsto_zero).2 1 (by norm_num)).mono
      fun _ hε ↦ hε.le
  have heq :
      (fun ε : {ε : ℝ // 0 < ε} ↦
        (realArithmeticForm (A + 1)
          (smoothedTest A ε.val ε.property) : ℂ))
        =ᶠ[positiveScaleAtZero]
      (fun ε ↦ ∑' o : ZeroOccurrence,
        smoothedBilateralTransform A ε.val ε.property
          (shiftedValue o) ^ 2) :=
    hsmall.mono fun ε hε ↦
      (smooth_explicit_formula A hA ε.val ε.property hε).tsum_eq.symm
  exact tendsto_nhds_unique hleft (hright.congr' heq.symm)

end
end FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae7e7a5878d2154e587f9c6f03c41af611b1678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
