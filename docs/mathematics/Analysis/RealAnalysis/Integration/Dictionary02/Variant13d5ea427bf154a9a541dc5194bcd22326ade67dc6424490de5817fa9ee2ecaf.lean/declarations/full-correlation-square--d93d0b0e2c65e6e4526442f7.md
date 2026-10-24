# full_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2ed346465894fd61740dc6f6d218ea10db8044c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13d5ea427bf154a9a541dc5194bcd22326ade67dc6424490de5817fa9ee2ecaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:667c3feb-32dd-fddc-c876-16696188a7c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bb4ff19-3534-b9d6-694d-1fb29b1613ca",
  "kind": "theorem",
  "lexical_name": "full_correlation_square",
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
  "slug": "full-correlation-square--d93d0b0e2c65e6e4526442f7",
  "source": {
    "blob": "f2ed346465894fd61740dc6f6d218ea10db8044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dictionary02/Variant13d5ea427bf154a9a541dc5194bcd22326ade67dc6424490de5817fa9ee2ecaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93d0b0e2c65e6e4526442f77c6e1802b8a0ce924f181399ed478c9710c7df71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dictionary02/Variant13d5ea427bf154a9a541dc5194bcd22326ade67dc6424490de5817fa9ee2ecaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb4ff19-3534-b9d6-694d-1fb29b1613ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_correlation_square (A : ℝ) (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      normalizedSquare A σ := by
  have hp := weighted_normalizedTest_integrable A σ hA
  have hn := weighted_normalizedTest_integrable A (-σ) hA
  have hs := weighted_correlation_integral (normalizedTest explicitSecondDerivative A) σ hp hn
  have he : (∫ x : ℝ, Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) =
      ∫ x : ℝ, Real.exp (σ*x)*normalizedTest explicitSecondDerivative A x := by
    have h := integral_neg_eq_self (fun x : ℝ => Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) volume
    have heven (x : ℝ) := actual_normalized_even A hA x
    simpa only [neg_mul_neg,heven] using h.symm
  change (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) = _ at hs
  rw [hs,he]
  have hq := real_transform_dictionary A σ
  unfold normalizedSquare
  rw [← hq,← Complex.ofReal_pow,Complex.ofReal_re]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dictionary02/Variant13d5ea427bf154a9a541dc5194bcd22326ade67dc6424490de5817fa9ee2ecaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dictionary02/Variant13d5ea427bf154a9a541dc5194bcd22326ade67dc6424490de5817fa9ee2ecaf.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ed346465894fd61740dc6f6d218ea10db8044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
