# correctedThreeTent_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:674dbb5e-ac07-12fb-4065-3293fa99decc",
  "kind": "theorem",
  "lexical_name": "correctedThreeTent_ne_zero",
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
  "slug": "correctedthreetent-ne-zero--ff2ddabef1f894ed6ceef674",
  "source": {
    "blob": "3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff2ddabef1f894ed6ceef6741c92560c990c98c50c97304ec6cf326811687ab6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:674dbb5e-ac07-12fb-4065-3293fa99decc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedThreeTent_ne_zero :
    correctedThreeTent ≠ (0 : ℝ → ℂ) := by
  have h0 : canonicalTentComplex 0 (20 : ℝ) = 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  have h1 : canonicalTentComplex 1 (20 : ℝ) = 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  have h2 : canonicalTentComplex 2 (20 : ℝ) ≠ 0 := by
    norm_num [canonicalTentComplex, canonicalTentReal, tent,
      squareCenter, squareRadius]
  intro heq
  have hv : correctedThreeTent (20 : ℝ) = 0 := by
    have h := congrArg (fun f : ℝ → ℂ => f (20 : ℝ)) heq
    simpa using h
  have hproduct : cofactorTwo * canonicalTentComplex 2 (20 : ℝ) ≠ 0 :=
    mul_ne_zero cofactorTwo_ne_zero h2
  apply hproduct
  simpa [correctedThreeTent, h0, h1] using hv

/-- The two-moment obstruction is sharp at the level of one actual
source-family test: two canonical tents alone cannot produce a nonzero
zero-moment function, whereas the first three do. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
