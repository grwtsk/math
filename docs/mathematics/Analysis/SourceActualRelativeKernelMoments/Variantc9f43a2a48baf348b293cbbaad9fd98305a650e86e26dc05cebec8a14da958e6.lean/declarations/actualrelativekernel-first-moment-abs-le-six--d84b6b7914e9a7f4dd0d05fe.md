# actualRelativeKernel_first_moment_abs_le_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0914cfe-3085-d624-f055-d0777d981c59",
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
  "slug": "actualrelativekernel-first-moment-abs-le-six--d84b6b7914e9a7f4dd0d05fe",
  "source": {
    "blob": "9b8a9960609f7ffef834b3d639a6d6bcd0a10d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantc9f43a2a48baf348b293cbbaad9fd98305a650e86e26dc05cebec8a14da958e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d84b6b7914e9a7f4dd0d05fe2d9ea4c57c240c6603040d8b0b5f1931ce87e463",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variantc9f43a2a48baf348b293cbbaad9fd98305a650e86e26dc05cebec8a14da958e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0914cfe-3085-d624-f055-d0777d981c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

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

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variantc9f43a2a48baf348b293cbbaad9fd98305a650e86e26dc05cebec8a14da958e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantc9f43a2a48baf348b293cbbaad9fd98305a650e86e26dc05cebec8a14da958e6.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b8a9960609f7ffef834b3d639a6d6bcd0a10d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
