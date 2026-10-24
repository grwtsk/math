# sqrtChebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1ba176eea2259ae1f8aa7bcd52368a0feae455075a918a3c8c4ed0ec4f75013",
  "kind": "def",
  "lexical_name": "sqrtChebyshev",
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
  "slug": "sqrtchebyshev--98992ca10a55c921ead77647",
  "source": {
    "blob": "0a4de3f5a215f3b37c591eaa95f1834bb2650d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98992ca10a55c921ead776475c0e3058563a6d251012dc68db1efc4e838194f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1ba176eea2259ae1f8aa7bcd52368a0feae455075a918a3c8c4ed0ec4f75013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrtChebyshev (a : AffineForm) (_hpos : 0 < a.toInterval.lo) : AffineForm :=
  let I := a.toInterval
  let lo := I.lo
  let hi := I.hi

  -- Use midpoint linearization (simpler than optimal Chebyshev)
  -- √x ≈ √m + (x-m)/(2·√m) = x/(2·√m) + √m/2
  let m := (lo + hi) / 2
  -- Conservative: √m ≈ (√lo + √hi)/2, so 1/(2√m) ≈ 1/(√lo + √hi)
  let sqrt_lo_I := IntervalRat.sqrtInterval ⟨lo, lo, le_refl _⟩
  let sqrt_hi_I := IntervalRat.sqrtInterval ⟨hi, hi, le_refl _⟩
  let sqrt_lo := sqrt_lo_I.lo  -- Lower bound on √lo
  let sqrt_hi := sqrt_hi_I.hi  -- Upper bound on √hi
  let sum_sqrt := sqrt_lo + sqrt_hi

  -- Avoid division by zero
  if hsum : sum_sqrt > 0 then
    let α := 1 / sum_sqrt  -- Coefficient for x
    let sqrt_m_I := IntervalRat.sqrtInterval ⟨m, m, le_refl _⟩
    let β := sqrt_m_I.lo  -- Lower bound on √m

    -- Error bound: (√hi - √lo)² / 4
    let diff := sqrt_hi - sqrt_lo
    let δ := diff * diff / 4

    let scaled := scale α a
    let shifted := add scaled (const β)
    { c0 := shifted.c0
      coeffs := shifted.coeffs
      r := shifted.r + |δ|
      r_nonneg := by linarith [shifted.r_nonneg, abs_nonneg δ] }
  else
    sqrt a  -- Fall back to simple version

/-! ## Division -/

/-- Division: a / b = a · (1/b) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4de3f5a215f3b37c591eaa95f1834bb2650d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
