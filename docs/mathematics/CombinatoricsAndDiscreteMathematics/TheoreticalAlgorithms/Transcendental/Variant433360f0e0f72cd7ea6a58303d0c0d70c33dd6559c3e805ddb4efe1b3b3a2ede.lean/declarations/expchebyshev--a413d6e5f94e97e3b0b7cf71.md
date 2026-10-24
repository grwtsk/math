# expChebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2105af7e777b1a40ea459daf495ddd2bfe428889fb526567958347c48869f87c",
  "kind": "def",
  "lexical_name": "expChebyshev",
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
  "slug": "expchebyshev--a413d6e5f94e97e3b0b7cf71",
  "source": {
    "blob": "ea52ba339990d060b7c387fbe9ee10c225d1b912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a413d6e5f94e97e3b0b7cf71772ce39b111048ef04f8c34feeff9e1814e6dc02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2105af7e777b1a40ea459daf495ddd2bfe428889fb526567958347c48869f87c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expChebyshev (a : AffineForm) (taylorDepth : Nat := 8) : AffineForm :=
  let I := a.toInterval
  let lo := I.lo
  let hi := I.hi
  let m := (lo + hi) / 2

  -- Compute e^m using Taylor
  let exp_m_I := IntervalRat.expComputable ⟨m, m, le_refl _⟩ taylorDepth
  let exp_m := exp_m_I.lo  -- Lower bound on e^m (conservative for tangent)

  -- Tangent at m: L(x) = e^m + e^m·(x - m) = e^m·x + e^m·(1 - m)
  let α := exp_m  -- Slope
  let β := exp_m * (1 - m)  -- Intercept

  -- Error bound: max deviation from secant
  -- At endpoints: max(e^lo - L(lo), e^hi - L(hi), L(m) - e^m)
  let exp_lo_I := IntervalRat.expComputable ⟨lo, lo, le_refl _⟩ taylorDepth
  let exp_hi_I := IntervalRat.expComputable ⟨hi, hi, le_refl _⟩ taylorDepth

  -- Conservative error: (e^hi - e^lo) / 8 · (hi - lo)² (for small intervals)
  let width := hi - lo
  let δ := (exp_hi_I.hi - exp_lo_I.lo) * width * width / 8

  let scaled := scale α a
  let shifted := add scaled (const β)
  { c0 := shifted.c0
    coeffs := shifted.coeffs
    r := shifted.r + |δ|
    r_nonneg := by linarith [shifted.r_nonneg, abs_nonneg δ] }

/-! ## Hyperbolic Tangent -/

/-- tanh using interval evaluation.

    tanh(x) = (e^x - e^{-x}) / (e^x + e^{-x})
    Always bounded in (-1, 1).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea52ba339990d060b7c387fbe9ee10c225d1b912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
