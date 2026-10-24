# MemLp.meas_ge_lt_top'_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87a4018f-ab3a-789d-3c5d-dd3b3c6f9556",
  "kind": "theorem",
  "lexical_name": "MemLp.meas_ge_lt_top'_enorm",
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
  "slug": "memlp-meas-ge-lt-top-enorm--8a190e955ae0552f900d98bd",
  "source": {
    "blob": "c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a190e955ae0552f900d98bd11ded94ca1bb7bf7093622109f23c171b98a8e83",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87a4018f-ab3a-789d-3c5d-dd3b3c6f9556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.meas_ge_lt_top'_enorm {μ : Measure α} {f : α → ε'} (hℒp : MemLp f p μ)
    (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    {ε : ℝ≥0∞} (hε : ε ≠ 0) (hε' : ε = ∞ → μ {x | ‖f x‖ₑ = ⊤} = 0) :
    μ { x | ε ≤ ‖f x‖ₑ } < ∞ := by
  apply meas_ge_le_mul_pow_eLpNorm_enorm μ hp_ne_zero hp_ne_top hℒp.aestronglyMeasurable hε hε'
    |>.trans_lt (ENNReal.mul_lt_top ?_ ?_)
  · simp [hε, lt_top_iff_ne_top]
  · simp [hℒp.eLpNorm_lt_top.ne, lt_top_iff_ne_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
