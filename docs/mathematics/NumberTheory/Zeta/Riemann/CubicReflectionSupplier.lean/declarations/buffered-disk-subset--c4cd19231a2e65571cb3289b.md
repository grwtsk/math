# buffered_disk_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52ac6907-001c-3f96-6345-52649a7424d9",
  "kind": "theorem",
  "lexical_name": "buffered_disk_subset",
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
  "slug": "buffered-disk-subset--c4cd19231a2e65571cb3289b",
  "source": {
    "blob": "54f9656ab7ecebbffb124712068f55c8661ce3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cd19231a2e65571cb3289b8d2992fb7e1dfe40b9edac391953faeffc3a25ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52ac6907-001c-3f96-6345-52649a7424d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem buffered_disk_subset (N : ℕ) (negative : Bool) (t radius buffer : ℚ)
    (layout : chartOffset N negative t + radius + buffer ≤ 3) (z : ℂ)
    (member : z ∈ closedBall (lineCenter t) (radius : ℝ)) :
    closedBall z (buffer : ℝ) ⊆ closedBall (chartCenter N negative) (3 : ℝ) := by
  intro w hw
  have hz : ‖z - lineCenter t‖ ≤ (radius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using member
  have hwr : ‖w - z‖ ≤ (buffer : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using hw
  have centerBound := center_distance_le_offset N negative t
  have layoutReal : (chartOffset N negative t : ℝ) + (radius : ℝ) + (buffer : ℝ) ≤ 3 := by
    exact_mod_cast layout
  rw [mem_closedBall, dist_eq_norm]
  have first := norm_sub_le_norm_sub_add_norm_sub w z (lineCenter t)
  have second := norm_sub_le_norm_sub_add_norm_sub w (lineCenter t) (chartCenter N negative)
  linarith

/-- Analyticity of the entire root disk is derived from the same checked padding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f9656ab7ecebbffb124712068f55c8661ce3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
