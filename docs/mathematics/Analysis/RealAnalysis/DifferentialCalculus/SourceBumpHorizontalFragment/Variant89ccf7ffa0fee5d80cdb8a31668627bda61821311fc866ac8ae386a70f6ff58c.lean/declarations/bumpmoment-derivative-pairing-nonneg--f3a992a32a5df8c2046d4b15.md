# bumpMoment_derivative_pairing_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ade642cd7a91a1a76e6b59eb0b0d704fac88b14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:164306fc-2fb8-8045-277d-73d2c7668568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13d8f5b6-ae5c-6d07-0a60-4dd197cf95c5",
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
  "slug": "bumpmoment-derivative-pairing-nonneg--f3a992a32a5df8c2046d4b15",
  "source": {
    "blob": "6ade642cd7a91a1a76e6b59eb0b0d704fac88b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a992a32a5df8c2046d4b1501b10d7d69828e5691c30cbeb0eb85899e963fab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13d8f5b6-ae5c-6d07-0a60-4dd197cf95c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalFragment/Variant89ccf7ffa0fee5d80cdb8a31668627bda61821311fc866ac8ae386a70f6ff58c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ade642cd7a91a1a76e6b59eb0b0d704fac88b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
