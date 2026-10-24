# cycleConvolution_smul_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8cb1f9d-cd7c-7384-c11a-e0c63e13fb14",
  "kind": "theorem",
  "lexical_name": "cycleConvolution_smul_kernel",
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
  "slug": "cycleconvolution-smul-kernel--9b7e3fc2d7d08f51265a6fa6",
  "source": {
    "blob": "d927882469db5824ab0347e1d92c6840a8233200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b7e3fc2d7d08f51265a6fa67c4b5d6abce977e30a63cc3d871bf4cc8cbbd172",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8cb1f9d-cd7c-7384-c11a-e0c63e13fb14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleConvolution_smul_kernel
    (cycle : DirectedCycleQuantum X)
    (c : ℝ) (a : CycleKernel cycle.period ℝ)
    (f : X → ℝ) :
    cycleConvolution cycle (c • a) f =
      c • cycleConvolution cycle a f := by
  funext x
  simp only [cycleConvolution_apply, Pi.smul_apply, smul_eq_mul]
  change (∑ k : Fin cycle.period,
    (c * a k) * f (cycle.orderedTransport k.val x)) =
    c * ∑ k : Fin cycle.period,
      a k * f (cycle.orderedTransport k.val x)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The delta kernel at prefix zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d927882469db5824ab0347e1d92c6840a8233200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
