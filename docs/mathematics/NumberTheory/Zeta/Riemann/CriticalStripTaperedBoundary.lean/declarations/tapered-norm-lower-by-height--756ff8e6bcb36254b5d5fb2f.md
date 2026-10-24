# tapered_norm_lower_by_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5956fb36-b7b7-ee1c-0d89-c843e109226e",
  "kind": "theorem",
  "lexical_name": "tapered_norm_lower_by_height",
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
  "slug": "tapered-norm-lower-by-height--756ff8e6bcb36254b5d5fb2f",
  "source": {
    "blob": "ca8be3674bb665ffd299f7323571742654b42fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756ff8e6bcb36254b5d5fb2f86f588b5785ff9655b600c5dfd3d59d29db40a03",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5956fb36-b7b7-ee1c-0d89-c843e109226e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tapered_norm_lower_by_height {T : ℝ} (hT : (1 / 2 : ℝ) ≤ T)
    (hT1 : T < 1) {s : ℂ} (hs : s ∈ rightBand ((1 + T) / 2) T) :
    3 * (1 - T) / 8 ≤ ‖poleNormalizedZeta s‖ := by
  have hu : 0 < (1 - T) / 2 := by linarith
  have hu4 : (1 - T) / 2 ≤ (1 / 4 : ℝ) := by linarith
  have hs' : s ∈ rightBand (1 - (1 - T) / 2) (1 - 2 * ((1 - T) / 2)) := by
    change _ ≤ s.re ∧ s.re ≤ 1 ∧ |s.im| ≤ _
    refine ⟨by linarith [hs.1], hs.2.1, ?_⟩
    have hEq : 1 - 2 * ((1 - T) / 2) = T := by ring
    rw [hEq]
    exact hs.2.2
  have h := tapered_norm_lower hu hu4 hs'
  convert h using 1 <;> ring

/-- An explicit closed rectangle above the old 1/3 starting height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8be3674bb665ffd299f7323571742654b42fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
