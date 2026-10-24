# quadratic_root_real_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc5c963b-426c-8a3c-5a86-c6da847d517e",
  "kind": "theorem",
  "lexical_name": "quadratic_root_real_of_nonneg",
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
  "slug": "quadratic-root-real-of-nonneg--6986f25495057fddc46673f6",
  "source": {
    "blob": "595b1542072b6c98d5a047529ac681bff41bd4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6986f25495057fddc46673f61e06d797dc18d2653f0f2c43a5aec7951c6717ad",
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

Occurrence: `result:fc5c963b-426c-8a3c-5a86-c6da847d517e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_root_real_of_nonneg (b c : ℝ) (hd : 0 ≤ b ^ 2 - 4 * c)
    (z : ℂ) (hz : z ^ 2 - (b : ℂ) * z + (c : ℂ) = 0) : z.im = 0 := by
  have hr := congrArg Complex.re hz
  have hi := congrArg Complex.im hz
  simp only [pow_two, Complex.add_re, Complex.sub_re, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, Complex.zero_re] at hr
  simp only [pow_two, Complex.add_im, Complex.sub_im, Complex.mul_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, add_zero, Complex.zero_im] at hi
  by_contra hne
  have hb : 2 * z.re = b := by
    have hmul : (2 * z.re - b) * z.im = 0 := by nlinarith [hi]
    have := (mul_eq_zero.mp hmul).resolve_right hne
    linarith
  have hsq : 0 < z.im ^ 2 := sq_pos_of_ne_zero hne
  nlinarith [sq_nonneg (2 * z.re - b)]

/-- A negative discriminant gives an explicit nonreal zero, rather than just conjugate symmetry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `595b1542072b6c98d5a047529ac681bff41bd4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
