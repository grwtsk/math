# actualRelativeKernel_first_moment_abs_le_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ab7656-be99-8dae-7beb-d1d92b4ac011",
  "kind": "theorem",
  "lexical_name": "actualRelativeKernel_first_moment_abs_le_six",
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
  "slug": "actualrelativekernel-first-moment-abs-le-six--3d7cba8232c3740d41165d31",
  "source": {
    "blob": "0b0aecd9334b11d1e516050b2b10ad8e2f353b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 285,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantf8898a3c914ecd501f50f8e8fd3e218f2f4483988ffe89d9d53ffde390673edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d7cba8232c3740d41165d312318f12d1c184bf0c1b927e4c9dc28c77603591b",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variantf8898a3c914ecd501f50f8e8fd3e218f2f4483988ffe89d9d53ffde390673edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ab7656-be99-8dae-7beb-d1d92b4ac011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeKernel_first_moment_abs_le_six {A : ℝ} (hA : 1 ≤ A) :
    |∫ t in 0..2*A, t * baselineLogKernel A t| ≤ 6 := by
  rw [first_kernel_eq hA]
  have hi : |criticalContinuousMoment A| ≤ 2 := by
    have hh := criticalContinuousMoment_strict_bounds hA
    exact abs_le.mpr ⟨hh.1.le, by linarith [hh.2]⟩
  exact (abs_add _ _).trans ((add_le_add hi (negative_first_abs_le_four hA)).trans_eq
    (by norm_num))

end FormalResearch.RiemannHypothesis.SourceActualRelativeKernelMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variantf8898a3c914ecd501f50f8e8fd3e218f2f4483988ffe89d9d53ffde390673edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantf8898a3c914ecd501f50f8e8fd3e218f2f4483988ffe89d9d53ffde390673edb.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b0aecd9334b11d1e516050b2b10ad8e2f353b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
