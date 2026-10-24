# rawFourier_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bdd8884-5823-dcd4-5ba2-1958b29435da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:885e034b-c625-9625-ca1a-13ad9d9f1d9c",
  "kind": "theorem",
  "lexical_name": "rawFourier_translate",
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
  "slug": "rawfourier-translate--7bdebcf995c60e2d53061b7b",
  "source": {
    "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bdebcf995c60e2d53061b7b74fd3c7a644626c6ab6a9ded866765dd3c747cc3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:885e034b-c625-9625-ca1a-13ad9d9f1d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawFourier_translate (a ξ : ℝ) (g : ℝ → ℂ) :
    rawFourier (timeTranslate a g) ξ =
      Complex.exp (((-(ξ * a)) : ℂ) * Complex.I) * rawFourier g ξ := by
  have htranslate : timeTranslate a g = g ∘ (fun v : ℝ => v + -a) := by
    funext u
    simp only [timeTranslate, Function.comp_apply, sub_eq_add_neg]
  rw [htranslate]
  have h := congrFun
    (Fourier.fourierIntegral_comp_add_right Real.fourierChar volume g (-a))
    (ξ / (2 * Real.pi))
  have harith : 2 * Real.pi * (-a * (ξ / (2 * Real.pi))) = -(ξ * a) := by
    field_simp
  simpa only [rawFourier, Function.comp_def,
    Circle.smul_def, Real.fourierChar_apply, smul_eq_mul, harith,
    Complex.ofReal_neg, Complex.ofReal_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e1a51bbfa26b4b737be01071b9b6d9d8b486de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
