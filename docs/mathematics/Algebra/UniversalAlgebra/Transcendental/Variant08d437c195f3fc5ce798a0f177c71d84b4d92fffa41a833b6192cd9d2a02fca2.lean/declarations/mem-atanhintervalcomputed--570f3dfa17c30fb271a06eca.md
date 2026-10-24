# mem_atanhIntervalComputed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ec838e3-65e8-4b6a-d39a-83fb1aa44218",
  "kind": "theorem",
  "lexical_name": "mem_atanhIntervalComputed",
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
  "slug": "mem-atanhintervalcomputed--570f3dfa17c30fb271a06eca",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570f3dfa17c30fb271a06eca13fd5d4aff622f59234e6dd9f07874e3242cb25d",
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

Occurrence: `result:0ec838e3-65e8-4b6a-d39a-83fb1aa44218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_atanhIntervalComputed {x : ℝ} {I : IntervalRatInUnitBall} (hx : x ∈ I) :
    Real.atanh x ∈ atanhIntervalComputed I := by
  simp only [atanhIntervalComputed]
  apply mem_ofRealEndpoints
  have hlo : (-1 : ℝ) < I.lo := by exact_mod_cast I.lo_gt
  have hhi : (I.hi : ℝ) < 1 := by exact_mod_cast I.hi_lt
  rw [IntervalRatInUnitBall.mem_def] at hx
  have hx_lo : -1 < x := by linarith [hx.1]
  have hx_hi : x < 1 := by linarith [hx.2]
  have habs_lo : |(I.lo : ℝ)| < 1 := by rw [abs_lt]; constructor <;> linarith
  have habs_hi : |(I.hi : ℝ)| < 1 := by rw [abs_lt]; constructor <;> linarith
  have habs_x : |x| < 1 := by rw [abs_lt]; constructor <;> linarith
  constructor
  · exact Real.atanh_mono habs_lo habs_x hx.1
  · exact Real.atanh_mono habs_x habs_hi hx.2

/-! ### Square Root Interval -/

/-- Integer square root (floor of sqrt).
    Satisfies: `(intSqrtNat n)^2 ≤ n < (intSqrtNat n + 1)^2` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
