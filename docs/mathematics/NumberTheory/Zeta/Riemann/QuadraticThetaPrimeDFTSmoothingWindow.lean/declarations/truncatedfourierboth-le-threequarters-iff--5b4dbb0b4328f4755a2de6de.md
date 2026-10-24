# truncatedFourierBoth_le_threeQuarters_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbc0ea31-5b14-14a8-f063-04b365d45d7e",
  "kind": "theorem",
  "lexical_name": "truncatedFourierBoth_le_threeQuarters_iff",
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
  "slug": "truncatedfourierboth-le-threequarters-iff--5b4dbb0b4328f4755a2de6de",
  "source": {
    "blob": "5caf0c75337d28cd035e9f68b0d6d1ec170a1ba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b4dbb0b4328f4755a2de6de1b07813b625cdafb9280c7d0b0d968b2faa1defd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbc0ea31-5b14-14a8-f063-04b365d45d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedFourierBoth_le_threeQuarters_iff {β : ℝ} :
    (truncatedFourierLowExponent β <= (3 : ℝ) / 4 ∧
      truncatedFourierBoundaryExponent β <= (3 : ℝ) / 4) ↔
      ((1 : ℝ) / 4 <= β ∧ β <= (1 : ℝ) / 2) := by
  rw [truncatedFourierLow_le_threeQuarters_iff,
    truncatedFourierBoundary_le_threeQuarters_iff]
  constructor
  · rintro ⟨hupper, hlower⟩
    exact ⟨hlower, hupper⟩
  · rintro ⟨hlower, hupper⟩
    exact ⟨hupper, hlower⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5caf0c75337d28cd035e9f68b0d6d1ec170a1ba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
