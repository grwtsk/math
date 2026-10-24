# arithmetic_zero_equality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92436a9c12f0d8cd894938b3e4caa575e272ee87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4a74a1e-1c3e-1512-1ffd-d215878a0a99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:055640c5-bbbf-9c63-0430-681b2f484be3",
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
  "slug": "arithmetic-zero-equality--21bbc59d23518b99fee81bf0",
  "source": {
    "blob": "92436a9c12f0d8cd894938b3e4caa575e272ee87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 572,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21bbc59d23518b99fee81bf049deed53804191a08a580890f996498ceea0c869",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:055640c5-bbbf-9c63-0430-681b2f484be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–599.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92436a9c12f0d8cd894938b3e4caa575e272ee87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
