# correlation_complex_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0baaef2-d9fa-fb9a-224d-549cd9d594b9",
  "kind": "lemma",
  "lexical_name": "correlation_complex_eq_convolution",
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
  "slug": "correlation-complex-eq-convolution--2f501f6a9c1612371509c92a",
  "source": {
    "blob": "4e0195f9616df5711e76892b9ccae6ce22dd4589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f501f6a9c1612371509c92a6c122a5bd51aa897c75979a67a012a966517ef03",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0baaef2-d9fa-fb9a-224d-549cd9d594b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma correlation_complex_eq_convolution (A : ℝ) :
    (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      (fun x ↦ (normalizedTest explicitSecondDerivative A x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (normalizedTest explicitSecondDerivative A (-x) : ℂ)) := by
  funext t
  unfold sourceCorrelation
  calc
    _ = ∫ x, ((normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) : ℝ) : ℂ) := integral_ofReal.symm
    _ = _ := ?_
  rw [convolution]
  apply integral_congr_ae
  filter_upwards [] with x
  simp [neg_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variantdf97ae15998d092406aeb97fcbfd4b274a363ce6c950fc686812ae64f6c25dbb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0195f9616df5711e76892b9ccae6ce22dd4589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
