# actualLongFirstPrime_with_main_eventually_below_residual_sub_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:049a7e08-24dc-8410-8867-e35b554fce10",
  "kind": "theorem",
  "lexical_name": "actualLongFirstPrime_with_main_eventually_below_residual_sub_linear",
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
  "slug": "actuallongfirstprime-with-main-eventually-below-residual-sub-linear--a8aff9ae75e453d1b545ffa5",
  "source": {
    "blob": "4a15e95e8363cfd74ca6716df008ffd8646ae051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variantd42642869f97844a631d0d475d72ab56951b2e1264d2c81242894b2d0195161c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8aff9ae75e453d1b545ffa52a6ee3104a13ffa6381b77f37190ba3bc3fe76de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variantd42642869f97844a631d0d475d72ab56951b2e1264d2c81242894b2d0195161c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:049a7e08-24dc-8410-8867-e35b554fce10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLongFirstPrime_with_main_eventually_below_residual_sub_linear :
    ∃ E R : ℝ, 0 ≤ E ∧ 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualLongFirstPrimeBlock A + diagonalMainCoefficient A * A ≤
        mertensResidual A - A / 8 + E := by
  obtain ⟨E, hE, herr⟩ := residual_firstPrime_uniform_replacement_error
  obtain ⟨R, hR, hs⟩ := actualShortFirstPrimeBlock_eventually_linear_lower
  refine ⟨E, R, hE, hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := by linarith
  have he := actualFirstPrimeMoment_eq_short_add_long hA1
  have herror := (abs_le.mp (herr A hA1)).1
  linarith [hs A hA]

end
end FormalResearch.RiemannHypothesis.SourceActualShortFirstPrimeBlock
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variantd42642869f97844a631d0d475d72ab56951b2e1264d2c81242894b2d0195161c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variantd42642869f97844a631d0d475d72ab56951b2e1264d2c81242894b2d0195161c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a15e95e8363cfd74ca6716df008ffd8646ae051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
