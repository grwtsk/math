# real_unit_layercake

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6457acd3-14b3-9f2d-2e80-5d7e1c713d90",
  "kind": "theorem",
  "lexical_name": "real_unit_layercake",
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
  "slug": "real-unit-layercake--4a436aadc0060f69e7b170b4",
  "source": {
    "blob": "3f14aefaf343dc0c0ba7c2ba4816b8142e4502ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variante48b708b2d67f60d5f40fda44f1520c0a96b067d7985def956ca5ef09de5e193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a436aadc0060f69e7b170b42b6c0ee79487d9f93568f08b2682029b8d814317",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variante48b708b2d67f60d5f40fda44f1520c0a96b067d7985def956ca5ef09de5e193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6457acd3-14b3-9f2d-2e80-5d7e1c713d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_unit_layercake {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w f : ι → ℝ) (hw : ∀ i, 0 ≤ w i) (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) {p : ℝ} (hp : 0 < p) :
    moment s w f p = p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
      superlevelMass s (fun i => ENNReal.ofReal (w i)) f t * ENNReal.ofReal (t ^ (p -
        1))).toReal := by
  have hsum : ENNReal.ofReal (moment s w f p) =
      ∑ i ∈ s, ENNReal.ofReal (w i) * ENNReal.ofReal ((f i) ^ p) := by
    unfold moment
    rw [ENNReal.ofReal_sum_of_nonneg (fun i _ => mul_nonneg (hw i) (Real.rpow_nonneg (hf0 i) p))]
    apply Finset.sum_congr rfl
    intro i _
    exact ENNReal.ofReal_mul (hw i)
  have h := unit_panel_moment s (fun i => ENNReal.ofReal (w i)) hf hf0 hf1 hp
  rw [← hsum] at h
  have ht := congrArg ENNReal.toReal h
  have hnonneg : 0 ≤ moment s w f p := Finset.sum_nonneg
    (fun i _ => mul_nonneg (hw i) (Real.rpow_nonneg (hf0 i) p))
  rw [ENNReal.toReal_ofReal hnonneg,
    ENNReal.toReal_mul, ENNReal.toReal_ofReal hp.le] at ht
  exact ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variante48b708b2d67f60d5f40fda44f1520c0a96b067d7985def956ca5ef09de5e193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealSuperlevelCompression/Variante48b708b2d67f60d5f40fda44f1520c0a96b067d7985def956ca5ef09de5e193.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f14aefaf343dc0c0ba7c2ba4816b8142e4502ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
