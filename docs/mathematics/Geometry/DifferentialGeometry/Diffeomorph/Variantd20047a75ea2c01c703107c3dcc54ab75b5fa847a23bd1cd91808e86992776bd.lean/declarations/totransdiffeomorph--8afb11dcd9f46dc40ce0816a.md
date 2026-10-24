# toTransDiffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5887f4c423d7d029aa70c34c41b6bd20a582034bb1d3d50d268c459cfc92658",
  "kind": "def",
  "lexical_name": "toTransDiffeomorph",
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
  "slug": "totransdiffeomorph--8afb11dcd9f46dc40ce0816a",
  "source": {
    "blob": "d718a8ad3c2f239b3d97860615abc23a1210eb87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 466,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8afb11dcd9f46dc40ce0816a0635019d1e9f8db7f23de7e134e9094152c6e0db",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5887f4c423d7d029aa70c34c41b6bd20a582034bb1d3d50d268c459cfc92658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTransDiffeomorph (e : E ≃ₘ^n⟮𝓘(𝕜, E), 𝓘(𝕜, F)⟯ F) : M ≃ₘ^n⟮I, I.transDiffeomorph e⟯ M where
  toEquiv := Equiv.refl M
  contMDiff_toFun x := by
    refine contMDiffWithinAt_iff'.2 ⟨continuousWithinAt_id, ?_⟩
    refine e.contDiff.contDiffWithinAt.congr_of_mem (fun y hy ↦ ?_) ?_
    · simp only [Equiv.coe_refl, id, (· ∘ ·), I.coe_extChartAt_transDiffeomorph,
        (extChartAt I x).right_inv hy.1]
    · exact
      ⟨(extChartAt I x).map_source (mem_extChartAt_source x), trivial, by simp only [mfld_simps]⟩
  contMDiff_invFun x := by
    refine contMDiffWithinAt_iff'.2 ⟨continuousWithinAt_id, ?_⟩
    refine e.symm.contDiff.contDiffWithinAt.congr_of_mem (fun y hy => ?_) ?_
    · simp only [mem_inter_iff, I.extChartAt_transDiffeomorph_target] at hy
      simp only [Equiv.coe_refl, Equiv.refl_symm, id, (· ∘ ·),
        I.coe_extChartAt_transDiffeomorph_symm, (extChartAt I x).right_inv hy.1]
    exact ⟨(extChartAt _ x).map_source (mem_extChartAt_source x), trivial, by
      simp only [e.symm_apply_apply, Equiv.refl_symm, Equiv.coe_refl, mfld_simps]⟩

variable {I M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantd20047a75ea2c01c703107c3dcc54ab75b5fa847a23bd1cd91808e86992776bd.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d718a8ad3c2f239b3d97860615abc23a1210eb87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
