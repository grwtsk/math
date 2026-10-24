# biasKernel_positive_somewhere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdb33f6b-ae67-08fa-dac6-a740148096af",
  "kind": "theorem",
  "lexical_name": "biasKernel_positive_somewhere",
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
  "slug": "biaskernel-positive-somewhere--5a501da1eaecf9c953433318",
  "source": {
    "blob": "a80c406a4e999df0811385886f3a8710de8cd5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a501da1eaecf9c953433318fc8177b20f0c07e9f0329f76197029d06cebae3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb33f6b-ae67-08fa-dac6-a740148096af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biasKernel_positive_somewhere {A : ℝ} (hA : 1 ≤ A) :
    ∃ x ∈ Icc 1 (Real.exp (2*A)), 0 < biasKernel A x := by
  obtain ⟨t, ht, hpos⟩ := biasLogKernel_positive_somewhere hA
  refine ⟨Real.exp t, ⟨Real.one_le_exp_iff.mpr ht.1, Real.exp_le_exp.mpr ht.2⟩, ?_⟩
  have he := biasKernel_eq_log_transport (A := A) (Real.exp_pos t)
  rw [Real.log_exp] at he
  rw [← he] at hpos
  exact (mul_pos_iff_of_pos_right (Real.exp_pos t)).mp hpos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80c406a4e999df0811385886f3a8710de8cd5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
