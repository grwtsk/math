# actual_source_complex_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ded20aff-e3f3-afe2-0a2d-619346bfbde7",
  "kind": "theorem",
  "lexical_name": "actual_source_complex_multiplier",
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
  "slug": "actual-source-complex-multiplier--7579ca424f6ff4a9b25f65df",
  "source": {
    "blob": "e6f1b706b55e26d4419e52ea3195e783a0e5ef0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ComplexZeroFrequencyAdapter/Variantb3ef16572342e3bc1abb939384a9ad4b8e4794e70f197e4b3de0abf50f353f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7579ca424f6ff4a9b25f65df991544889e3663ad17fe5eb43a41dcd54d823ee5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ComplexZeroFrequencyAdapter/Variantb3ef16572342e3bc1abb939384a9ad4b8e4794e70f197e4b3de0abf50f353f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded20aff-e3f3-afe2-0a2d-619346bfbde7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_complex_multiplier {A : ℝ} (hA : 1 ≤ A) (w : ℂ) :
    complexAngularTransform (prescribedSource A) w =
      -(w ^ 2 + 1 / 4) * complexBumpMoment A (-Complex.I * w) /
        (Real.sqrt (sourceZ A) : ℂ) := by
  rw [prescribedSource_eq A hA, sourceZ_eq A hA]
  change complexTestMoment A (-Complex.I * w) = _
  rw [complex_actual_normalized_laplace_multiplier hA]
  have he : (-Complex.I * w) ^ 2 - 1 / 4 = -(w ^ 2 + 1 / 4) := by
    rw [mul_pow, neg_sq, Complex.I_sq]
    ring
  rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ComplexZeroFrequencyAdapter/Variantb3ef16572342e3bc1abb939384a9ad4b8e4794e70f197e4b3de0abf50f353f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ComplexZeroFrequencyAdapter/Variantb3ef16572342e3bc1abb939384a9ad4b8e4794e70f197e4b3de0abf50f353f39.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f1b706b55e26d4419e52ea3195e783a0e5ef0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
