# mem_sqrtIntervalTight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a9db638-a1de-cd96-b8b8-f6867ed0498c",
  "kind": "theorem",
  "lexical_name": "mem_sqrtIntervalTight",
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
  "slug": "mem-sqrtintervaltight--0badcbf505cca7c85e4facae",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 678,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0badcbf505cca7c85e4facae2b829fb573a4ff62a6fd32e9481dc3b41711a691",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a9db638-a1de-cd96-b8b8-f6867ed0498c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sqrtIntervalTight {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (hx_nn : 0 ≤ x) :
    Real.sqrt x ∈ sqrtIntervalTight I := by
  simp only [sqrtIntervalTight]
  split_ifs with hlo
  · -- Case: I.lo ≥ 0 (positive interval)
    simp only [mem_def, Rat.cast_max, Rat.cast_one]
    constructor
    · -- Lower bound: sqrtRatLower I.lo ≤ sqrt(x)
      have h1 : (sqrtRatLower I.lo : ℝ) ≤ Real.sqrt I.lo := sqrtRatLower_le_sqrt hlo
      have h2 : Real.sqrt (I.lo : ℝ) ≤ Real.sqrt x := Real.sqrt_le_sqrt hx.1
      exact le_trans h1 h2
    · -- Upper bound: sqrt(x) ≤ max (sqrtRatUpper I.hi) 1
      exact sqrt_le_sqrtRatUpper_max hx_nn hx.2
  · -- Case: I.lo < 0 (interval crosses zero)
    simp only [mem_def, Rat.cast_zero, Rat.cast_max, Rat.cast_one]
    constructor
    · exact Real.sqrt_nonneg x
    · exact sqrt_le_sqrtRatUpper_max hx_nn hx.2

/-- General soundness of tight sqrt interval: works for any x ∈ I (including negative).
    When x < 0, Real.sqrt x = 0, which is always in the result interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
