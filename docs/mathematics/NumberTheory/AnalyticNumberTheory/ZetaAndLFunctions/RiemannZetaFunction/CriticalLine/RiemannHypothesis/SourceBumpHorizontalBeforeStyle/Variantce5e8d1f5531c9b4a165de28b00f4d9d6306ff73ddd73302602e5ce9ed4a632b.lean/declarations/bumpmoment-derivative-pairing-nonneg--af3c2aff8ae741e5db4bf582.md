# bumpMoment_derivative_pairing_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d28c3413f74e6a3d7d57c74665f1d15c04ddf5ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce5e8d1f5531c9b4a165de28b00f4d9d6306ff73ddd73302602e5ce9ed4a632b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b112ba52-a0bb-0a30-2152-f7feadc23100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:977705ed-622b-3521-7865-3b0bfb803fe0",
  "kind": "theorem",
  "lexical_name": "bumpMoment_derivative_pairing_nonneg",
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
  "slug": "bumpmoment-derivative-pairing-nonneg--af3c2aff8ae741e5db4bf582",
  "source": {
    "blob": "d28c3413f74e6a3d7d57c74665f1d15c04ddf5ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpHorizontalBeforeStyle/Variantce5e8d1f5531c9b4a165de28b00f4d9d6306ff73ddd73302602e5ce9ed4a632b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af3c2aff8ae741e5db4bf5829971bbb79f66b36f0d7dca2a68e62ee8dfb73635",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpHorizontalBeforeStyle/Variantce5e8d1f5531c9b4a165de28b00f4d9d6306ff73ddd73302602e5ce9ed4a632b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:977705ed-622b-3521-7865-3b0bfb803fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_derivative_pairing_nonneg (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re := by
  have he := radial_boundary_energy_identity z
  let p : ℂ := bumpMoment 1 z * star (bumpMoment 0 z)
  have he' : z * p = (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := by
    simpa only [p, mul_assoc] using he
  have hr' := congrArg Complex.re he'
  have hi' := congrArg Complex.im he'
  simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im, pow_two, mul_zero, sub_zero,
    zero_add] at hr' hi'
  have hid : (z.re^2 + z.im^2) * p.re =
      z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) := by
    linear_combination z.re * hr' + z.im * hi'
  have hp : 0 < z.re^2 + z.im^2 := add_pos_of_pos_of_nonneg
    (sq_pos_of_pos hz) (sq_nonneg _)
  have hnn : 0 ≤ z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) :=
    mul_nonneg hz.le (add_nonneg (radialEnergy_nonneg z)
      (mul_nonneg hp.le (radialMass_pos z).le))
  have : 0 ≤ (z.re^2 + z.im^2) * p.re := by rw [hid]; exact hnn
  exact (mul_nonneg_iff_of_pos_left hp).mp this

/-- Squared modulus has the exact real derivative on every horizontal line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpHorizontalBeforeStyle/Variantce5e8d1f5531c9b4a165de28b00f4d9d6306ff73ddd73302602e5ce9ed4a632b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpHorizontalBeforeStyle/Variantce5e8d1f5531c9b4a165de28b00f4d9d6306ff73ddd73302602e5ce9ed4a632b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28c3413f74e6a3d7d57c74665f1d15c04ddf5ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
