# mem_sinhComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02eed022-e44c-1eac-d3ad-7126b0ed896f",
  "kind": "theorem",
  "lexical_name": "mem_sinhComputable",
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
  "slug": "mem-sinhcomputable--c472a78708f5040eb3bfb3cf",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1216,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c472a78708f5040eb3bfb3cf1c0f02d17f8c13052b179e2e3e83228df610df3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02eed022-e44c-1eac-d3ad-7126b0ed896f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1216–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sinhComputable {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    Real.sinh x ∈ sinhComputable I n := by
  simp only [sinhComputable]
  -- sinh is strictly monotone increasing
  have hsinh_mono : StrictMono Real.sinh := Real.sinh_strictMono
  have hlo_mem := mem_sinhPointComputable I.lo n
  have hhi_mem := mem_sinhPointComputable I.hi n
  -- x ∈ [lo, hi] implies sinh(lo) ≤ sinh(x) ≤ sinh(hi)
  have hlo_le_x : (I.lo : ℝ) ≤ x := hx.1
  have hx_le_hi : x ≤ (I.hi : ℝ) := hx.2
  have hsinh_lo_le : Real.sinh I.lo ≤ Real.sinh x :=
    hsinh_mono.monotone hlo_le_x
  have hsinh_x_le_hi : Real.sinh x ≤ Real.sinh I.hi :=
    hsinh_mono.monotone hx_le_hi
  -- sinh x is between sinh(lo) and sinh(hi), which are in the hull
  simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
  constructor
  · calc (min (sinhPointComputable I.lo n).lo (sinhPointComputable I.hi n).lo : ℝ)
        ≤ (sinhPointComputable I.lo n).lo := by exact_mod_cast min_le_left _ _
      _ ≤ Real.sinh I.lo := hlo_mem.1
      _ ≤ Real.sinh x := hsinh_lo_le
  · calc Real.sinh x ≤ Real.sinh I.hi := hsinh_x_le_hi
      _ ≤ (sinhPointComputable I.hi n).hi := hhi_mem.2
      _ ≤ max ((sinhPointComputable I.lo n).hi : ℝ) ((sinhPointComputable I.hi n).hi : ℝ) := le_max_right _ _

/-- FTIA for coshComputable: Real.cosh x ∈ coshComputable I n for any x ∈ I.

    Uses endpoint evaluation and monotonicity properties of cosh. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
