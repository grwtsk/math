# ideal_factor_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77973f04-70f8-0f38-10df-ea39b8045017",
  "kind": "theorem",
  "lexical_name": "ideal_factor_ne_zero",
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
  "slug": "ideal-factor-ne-zero--c9910f717973adf70e2cc8bb",
  "source": {
    "blob": "7b3da90ed34307974604c504e90628abf7f59fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 773,
    "path": "GRWTSK/Algebra/Operations/Variant5e3930e95eb4386297c17d4400b5d346186204002d7315a8ae370340787ab765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9910f717973adf70e2cc8bb766e83e694b3c6fd2799b57cd804088a69a5e452",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant5e3930e95eb4386297c17d4400b5d346186204002d7315a8ae370340787ab765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77973f04-70f8-0f38-10df-ea39b8045017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_factor_ne_zero {R} [CommRing R] {K : Type*} [Field K] [Algebra R K]
    [IsFractionRing R K] {I : FractionalIdeal R⁰ K} (hI : I ≠ 0) {a : R} {J : Ideal R}
    (haJ : I = spanSingleton R⁰ ((algebraMap R K) a)⁻¹ * ↑J) : J ≠ 0 := fun h ↦ by
  rw [h, Ideal.zero_eq_bot, coeIdeal_bot, MulZeroClass.mul_zero] at haJ
  exact hI haJ

/-- If `I` is a nonzero fractional ideal, `a ∈ R`, and `J` is an ideal of `R` such that
`I = a⁻¹J`, then `a` is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant5e3930e95eb4386297c17d4400b5d346186204002d7315a8ae370340787ab765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant5e3930e95eb4386297c17d4400b5d346186204002d7315a8ae370340787ab765.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3da90ed34307974604c504e90628abf7f59fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
