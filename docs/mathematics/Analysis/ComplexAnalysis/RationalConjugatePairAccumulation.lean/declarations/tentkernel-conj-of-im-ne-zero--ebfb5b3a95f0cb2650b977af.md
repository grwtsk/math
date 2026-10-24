# tentKernel_conj_of_im_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e60d4b12-5c20-d699-6033-bdfbe2bdac46",
  "kind": "theorem",
  "lexical_name": "tentKernel_conj_of_im_ne_zero",
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
  "slug": "tentkernel-conj-of-im-ne-zero--ebfb5b3a95f0cb2650b977af",
  "source": {
    "blob": "ea84f1e7925495337cd58bb9b7456489d9a5012f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 49,
    "path": "GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebfb5b3a95f0cb2650b977afe04bc65ce76ae8741cacd10d42555db6314ab9e1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e60d4b12-5c20-d699-6033-bdfbe2bdac46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tentKernel_conj_of_im_ne_zero
    (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (him : z.im ≠ 0) :
    tentKernel x h (conj z) = conj (tentKernel x h z) := by
  have hz0 : z ≠ 0 := by
    intro hz
    apply him
    simp [hz]
  have hz1 : z + 1 ≠ 0 := by
    intro hz
    have hzim := congrArg Complex.im hz
    apply him
    simpa using hzim
  have hcz0 : conj z ≠ 0 := by
    intro hz
    apply hz0
    have := congrArg conj hz
    simpa using this
  have hcz1 : conj z + 1 ≠ 0 := by
    intro hz
    apply hz1
    have := congrArg conj hz
    simpa using this
  rw [tentKernel_eq_quotient x h hh ha (conj z) hcz0 hcz1,
    tentKernel_eq_quotient x h hh ha z hz0 hz1]
  simp [logPower_conj, map_add, map_sub, map_mul, map_div₀]

/-- Rational center for the whole conjugate pair: twice the real component and
zero imaginary component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea84f1e7925495337cd58bb9b7456489d9a5012f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
