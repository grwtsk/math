# continuous_rpow_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf332c19-1567-18d3-eff8-fad5cc837b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c029f2b-7f73-9e2c-29de-1804e3f29b54",
  "kind": "theorem",
  "lexical_name": "continuous_rpow_const",
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
  "slug": "continuous-rpow-const--e17e47d0be67d934086baa89",
  "source": {
    "blob": "90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 466,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17e47d0be67d934086baa8933cfe4638c620ed6a0b059ca4a645b3fdc0e8955",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c029f2b-7f73-9e2c-29de-1804e3f29b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_rpow_const {y : ℝ} : Continuous fun a : ℝ≥0∞ => a ^ y := by
  refine continuous_iff_continuousAt.2 fun x => ?_
  rcases lt_trichotomy (0 : ℝ) y with (hy | rfl | hy)
  · exact continuousAt_rpow_const_of_pos hy
  · simp only [rpow_zero]
    exact continuousAt_const
  · obtain ⟨z, hz⟩ : ∃ z, y = -z := ⟨-y, (neg_neg _).symm⟩
    have z_pos : 0 < z := by simpa [hz] using hy
    simp_rw [hz, rpow_neg]
    exact continuous_inv.continuousAt.comp (continuousAt_rpow_const_of_pos z_pos)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant12ed90598228f48e7029579c2cf23fc3a1a387dfc658e03904826107c8747ff5.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c8f28d6a1ff5388ee0ad9cbf8bf31efbe87bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
