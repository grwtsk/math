# disk_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a7a5f31-facf-823f-ecfc-ef3ced18bac6",
  "kind": "theorem",
  "lexical_name": "disk_bounds",
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
  "slug": "disk-bounds--d66bad9c8f848d0ffe57eadd",
  "source": {
    "blob": "4f9249ae44e52df5b08d04581f30ca6a951912ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66bad9c8f848d0ffe57eadd0e115a24bebfe2989460bea43c6650514fa163fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a7a5f31-facf-823f-ecfc-ef3ced18bac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disk_bounds {c z : ℂ} {S σ B D : ℝ}
    (hleft : σ ≤ c.re - S) (hB : ‖c‖ + S ≤ B) (hD : ‖c - 1‖ + S ≤ D)
    (hz : z ∈ closedBall c S) : σ ≤ z.re ∧ ‖z‖ ≤ B ∧ ‖z - 1‖ ≤ D := by
  have hd : ‖z - c‖ ≤ S := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hre := (Complex.abs_re_le_norm (z - c)).trans hd
  have hlo := (abs_le.mp hre).1
  simp only [Complex.sub_re] at hlo
  refine ⟨by linarith, ?_, ?_⟩
  · calc
      _ = ‖c + (z - c)‖ := by congr 1; ring
      _ ≤ ‖c‖ + ‖z - c‖ := norm_add_le _ _
      _ ≤ B := (add_le_add_left hd _).trans hB
  · calc
      _ = ‖(c - 1) + (z - c)‖ := by congr 1; ring
      _ ≤ ‖c - 1‖ + ‖z - c‖ := norm_add_le _ _
      _ ≤ D := (add_le_add_left hd _).trans hD

/-- A sourced first-derivative bound on the ENTIRE smaller closed disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9249ae44e52df5b08d04581f30ca6a951912ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
