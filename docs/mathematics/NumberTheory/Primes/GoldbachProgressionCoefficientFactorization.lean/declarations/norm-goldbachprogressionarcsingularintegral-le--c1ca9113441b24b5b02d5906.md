# norm_goldbachProgressionArcSingularIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ead7f85b-b7af-5d0a-a044-5d05608957ae",
  "kind": "theorem",
  "lexical_name": "norm_goldbachProgressionArcSingularIntegral_le",
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
  "slug": "norm-goldbachprogressionarcsingularintegral-le--c1ca9113441b24b5b02d5906",
  "source": {
    "blob": "fba2b5e6a7489233821d323ad897eff83fc10234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ca9113441b24b5b02d59061e1d8fd54d687cdcd0effe1f9a7d69f25048e3a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ead7f85b-b7af-5d0a-a044-5d05608957ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_goldbachProgressionArcSingularIntegral_le
    (Q N : ℕ) (aq : ℕ × ℕ) :
    ‖goldbachProgressionArcSingularIntegral Q N aq‖ ≤
      ((N + 1 : ℝ) ^ 2) *
        (6 * goldbachRationalArcRadius Q N aq.2) := by
  have hmeasure :
      volume (goldbachClippedRationalArc Q N aq) < ∞ := by
    exact
      (measure_mono Set.inter_subset_left).trans_lt
        measure_Ioc_lt_top
  unfold goldbachProgressionArcSingularIntegral
  calc
    ‖∫ x in goldbachClippedRationalArc Q N aq,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
      ((N + 1 : ℝ) ^ 2) *
        volume.real
          (goldbachClippedRationalArc Q N aq) := by
      exact norm_setIntegral_le_of_norm_le_const hmeasure
        (fun x hx =>
          norm_goldbachFiniteSingularKernel_le N
            (goldbachRationalArcOffset aq.1 aq.2 x))
    _ ≤
      ((N + 1 : ℝ) ^ 2) *
        (6 * goldbachRationalArcRadius Q N aq.2) := by
      exact mul_le_mul_of_nonneg_left
        (measureReal_goldbachClippedRationalArc_le Q N aq)
        (sq_nonneg (N + 1 : ℝ))

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientFactorization.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba2b5e6a7489233821d323ad897eff83fc10234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
