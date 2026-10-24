# MemLp.meas_ge_lt_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcc94391-cc60-5d87-21ac-09dec38e4451",
  "kind": "theorem",
  "lexical_name": "MemLp.meas_ge_lt_top'",
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
  "slug": "memlp-meas-ge-lt-top--6980df59fea273c0eb814a0d",
  "source": {
    "blob": "c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6980df59fea273c0eb814a0db6cf9582d52427586480daa07c046551f04490ad",
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

Occurrence: `result:dcc94391-cc60-5d87-21ac-09dec38e4451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.meas_ge_lt_top' {μ : Measure α} {f : α → E} (hℒp : MemLp f p μ) (hp_ne_zero : p ≠ 0)
    (hp_ne_top : p ≠ ∞) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    μ { x | ε ≤ ‖f x‖₊ } < ∞ := by
  by_cases h : ε = ∞
  · simp [h]
  exact hℒp.meas_ge_lt_top'_enorm hp_ne_zero hp_ne_top hε (by simp)

@[deprecated (since := "2025-02-21")]
alias Memℒp.meas_ge_lt_top' := MemLp.meas_ge_lt_top'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Varianta55a26daa1905591b82932487dec2ac6f2089993ddfdd6b1918ec6703faa00b6.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c67e8b7e09e4bbfc7ae098b191b9dbfdc00eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
