# height_triple_of_bounded_ends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a970c8f-0418-effc-57a8-abca59728a4a",
  "kind": "theorem",
  "lexical_name": "height_triple_of_bounded_ends",
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
  "slug": "height-triple-of-bounded-ends--989d29e7ad72ae033ea9ef46",
  "source": {
    "blob": "ff2c5ac6814b8175e971826dca08894ab0c009cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 54,
    "path": "GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:989d29e7ad72ae033ea9ef4665e35bb81b5f698d345b143b8d7407353c109bdc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a970c8f-0418-effc-57a8-abca59728a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem height_triple_of_bounded_ends
    {G : Type*} [Group G]
    (height : G → ℝ)
    (hNonneg : ∀ g, 0 ≤ height g)
    (hMul : ∀ g k, height (g * k) ≤ height g * height k)
    (C : ℝ) (hC : 0 ≤ C)
    (g a b : G) (hg : height g ≤ C) (hb : height b ≤ C) :
    height (g * a * b) ≤ C ^ 2 * height a := by
  calc
    height (g * a * b) ≤ height g * height a * height b :=
      height_triple_le height hNonneg hMul g a b
    _ ≤ (C * height a) * height b :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right hg (hNonneg a))
        (hNonneg b)
    _ ≤ (C * height a) * C :=
      mul_le_mul_of_nonneg_left hb (mul_nonneg hC (hNonneg a))
    _ = C ^ 2 * height a := by ring

/-- The genuine CocycleProduct gauge law gives a two-sided quantitative
comparison when the gauge AND ITS INVERSE have a uniform height
bound. This is stronger than the unrestricted gauge identity and
does not assume a spectral/analytic source or the existence of limits.

It is suitable for an operator-norm specialization ONLY after the
chosen representation is proved submultiplicative and the source
gauge and inverse satisfy the two named bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2c5ac6814b8175e971826dca08894ab0c009cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
