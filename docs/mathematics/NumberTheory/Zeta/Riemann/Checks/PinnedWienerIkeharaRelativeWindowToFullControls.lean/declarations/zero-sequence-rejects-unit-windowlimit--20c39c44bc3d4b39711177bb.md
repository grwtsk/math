# zero_sequence_rejects_unit_windowLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a0712fa-a18e-062c-6e00-610b810daeb2",
  "kind": "theorem",
  "lexical_name": "zero_sequence_rejects_unit_windowLimit",
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
  "slug": "zero-sequence-rejects-unit-windowlimit--20c39c44bc3d4b39711177bb",
  "source": {
    "blob": "e49d08049250c0f386595b3b734b4313a82cd9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c39c44bc3d4b39711177bb49ac11a3ff40e80e56fd0955b624de30265fff1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0712fa-a18e-062c-6e00-610b810daeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_sequence_rejects_unit_windowLimit :
    ¬ TauberianRelativeWindowLimits (fun _ : ℕ => (0 : ℝ)) 1 := by
  intro h
  have hhalf := h ((1 : ℝ) / 2) (by norm_num) (by norm_num)
  have hone :
      Tendsto (fun _ : ℕ => (0 : ℝ))
        atTop (nhds ((1 : ℝ) / 2)) := by
    simpa using hhalf
  have hzero :
      Tendsto (fun _ : ℕ => (0 : ℝ))
        atTop (nhds (0 : ℝ)) :=
    tendsto_const_nhds
  have hfalse : ((1 : ℝ) / 2) = 0 :=
    tendsto_nhds_unique hone hzero
  norm_num at hfalse

/-- The actual pinned Λ conclusion still CONSUMES the independent
interval theorem, never a source/metadata assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49d08049250c0f386595b3b734b4313a82cd9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
