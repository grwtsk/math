# normalizedSource_hasSpatialDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e363432-5ff2-0aec-0062-236e8461798b",
  "kind": "theorem",
  "lexical_name": "normalizedSource_hasSpatialDerivAt",
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
  "slug": "normalizedsource-hasspatialderivat--f1f9e020fe698f6684b488b8",
  "source": {
    "blob": "ae85060fdb033d8b7e42f76bd40296f0b684721c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantf96a74d32b8d06df18b0e28c9df9e517b5d1b579c69d22d2adf5d6a0808e3409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1f9e020fe698f6684b488b8e22e6182381ca168f5f8483326a5d32f83864677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantf96a74d32b8d06df18b0e28c9df9e517b5d1b579c69d22d2adf5d6a0808e3409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e363432-5ff2-0aec-0062-236e8461798b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSource_hasSpatialDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (normalizedTest explicitSecondDerivative A) (spatialDerivative A x) x := by
  have h0 := sourceBump_contDiff_three.differentiable (by norm_num)
  have h2 := sourceBump_contDiff_three.deriv'.deriv'.differentiable_one
  have hx := (hasDerivAt_id x).div_const A
  have hd := ((((h2 (x / A)).hasDerivAt.comp x hx).div_const (A ^ 2)).sub
    (((h0 (x / A)).hasDerivAt.comp x hx).div_const 4)).const_mul (scaleAmplitude A)
  have heq : (fun y => scaleAmplitude A *
      (deriv (deriv sourceBump) (y / A) / A ^ 2 - sourceBump (y / A) / 4)) =
      normalizedTest explicitSecondDerivative A := by
    funext y
    rw [← scaleProfile_eq_amplitude hA, scaleProfile_eq_source hA]
  simp only [Function.comp_def, id_eq, Pi.sub_apply] at hd
  rw [heq] at hd
  apply hd.congr_deriv
  dsimp [spatialDerivative]
  field_simp

/-- The explicit representative is literally the ordinary spatial source derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantf96a74d32b8d06df18b0e28c9df9e517b5d1b579c69d22d2adf5d6a0808e3409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MixedSourceV3Prebytes/Variantf96a74d32b8d06df18b0e28c9df9e517b5d1b579c69d22d2adf5d6a0808e3409.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae85060fdb033d8b7e42f76bd40296f0b684721c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
