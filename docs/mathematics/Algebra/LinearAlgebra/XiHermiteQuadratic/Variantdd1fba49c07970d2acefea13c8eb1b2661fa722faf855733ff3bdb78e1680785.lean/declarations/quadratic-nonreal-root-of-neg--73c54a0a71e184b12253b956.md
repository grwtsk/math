# quadratic_nonreal_root_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c097e46d-da56-3b9c-570e-eb7b8b170aad",
  "kind": "theorem",
  "lexical_name": "quadratic_nonreal_root_of_neg",
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
  "slug": "quadratic-nonreal-root-of-neg--73c54a0a71e184b12253b956",
  "source": {
    "blob": "595b1542072b6c98d5a047529ac681bff41bd4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73c54a0a71e184b12253b956e8b59934b982748674af2b9d6667c31fa6075b9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c097e46d-da56-3b9c-570e-eb7b8b170aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_nonreal_root_of_neg (b c : ℝ) (hd : b ^ 2 - 4 * c < 0) :
    ∃ z : ℂ, z ^ 2 - (b : ℂ) * z + (c : ℂ) = 0 ∧ z.im ≠ 0 := by
  have hpos : 0 < 4 * c - b ^ 2 := by linarith
  have hs := Real.sq_sqrt hpos.le
  simp only [pow_two] at hs
  have hsp := Real.sqrt_pos.mpr hpos
  refine ⟨⟨b / 2, Real.sqrt (4 * c - b ^ 2) / 2⟩, ?_, ?_⟩
  · apply Complex.ext
    · simp only [pow_two, Complex.add_re, Complex.sub_re, Complex.mul_re,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re]
      nlinarith
    · simp only [pow_two, Complex.add_im, Complex.sub_im, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero, Complex.zero_im]
      ring
  · change Real.sqrt (4 * c - b ^ 2) / 2 ≠ 0
    positivity

/-- The complete quadratic Hermite criterion, including repeated roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `595b1542072b6c98d5a047529ac681bff41bd4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
