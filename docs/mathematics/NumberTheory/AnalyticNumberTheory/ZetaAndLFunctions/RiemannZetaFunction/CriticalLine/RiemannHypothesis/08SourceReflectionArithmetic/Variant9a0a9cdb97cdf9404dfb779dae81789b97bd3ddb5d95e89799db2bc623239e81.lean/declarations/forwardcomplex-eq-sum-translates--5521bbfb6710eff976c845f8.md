# forwardComplex_eq_sum_translates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91bbd49f-927a-bd2d-5233-63ff21c7c6e9",
  "kind": "theorem",
  "lexical_name": "forwardComplex_eq_sum_translates",
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
  "slug": "forwardcomplex-eq-sum-translates--5521bbfb6710eff976c845f8",
  "source": {
    "blob": "2cceee931fcb448ad8a927e1a757728e5aa3b1ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variant9a0a9cdb97cdf9404dfb779dae81789b97bd3ddb5d95e89799db2bc623239e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5521bbfb6710eff976c845f80de40121fa03b814376d0401086a64c87846de8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variant9a0a9cdb97cdf9404dfb779dae81789b97bd3ddb5d95e89799db2bc623239e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91bbd49f-927a-bd2d-5233-63ff21c7c6e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardComplex_eq_sum_translates (A : ℝ) (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    complexify (forwardL2 A hA s c) =
      ∑ n ∈ s, (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA) := by
  apply Lp.ext
  filter_upwards [complexify_coe_ae (forwardL2 A hA s c),
    (forwardProfile_memLp hA s c).coeFn_toLp,
    Lp.coeFn_fun_finsetSum s
      (fun n => (c n : ℂ) • translation (Real.log (n : ℝ)) (sourceL2 A hA)),
    ae_all_iff.mpr (fun n : ℕ => Lp.coeFn_smul (c n : ℂ)
      (translation (Real.log (n : ℝ)) (sourceL2 A hA))),
    ae_all_iff.mpr (fun n : ℕ => translatedSource_coe_ae A hA (Real.log (n : ℝ)))]
      with x hc hf hs hsm ht
  change forwardL2 A hA s c x = forwardProfile A s c x at hf
  rw [hc, hf, hs]
  simp only [forwardProfile, Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [hsm n]
  simp only [Pi.smul_apply, smul_eq_mul]
  rw [ht n]
  simp

/-- The actual reflected beta state is spatial reflection of the same forward row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variant9a0a9cdb97cdf9404dfb779dae81789b97bd3ddb5d95e89799db2bc623239e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08SourceReflectionArithmetic/Variant9a0a9cdb97cdf9404dfb779dae81789b97bd3ddb5d95e89799db2bc623239e81.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cceee931fcb448ad8a927e1a757728e5aa3b1ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
