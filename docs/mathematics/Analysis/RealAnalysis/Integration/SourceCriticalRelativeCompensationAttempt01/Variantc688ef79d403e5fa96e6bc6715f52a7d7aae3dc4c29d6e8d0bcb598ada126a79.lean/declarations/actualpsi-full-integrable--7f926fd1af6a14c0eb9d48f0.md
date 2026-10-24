# actualPsi_full_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f225cc6-8aa0-e0e2-57e2-be8e83c3d397",
  "kind": "theorem",
  "lexical_name": "actualPsi_full_integrable",
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
  "slug": "actualpsi-full-integrable--7f926fd1af6a14c0eb9d48f0",
  "source": {
    "blob": "f32e6fa12397ab149e32c3ae1e186e56b5412a78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantc688ef79d403e5fa96e6bc6715f52a7d7aae3dc4c29d6e8d0bcb598ada126a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f926fd1af6a14c0eb9d48f0f6ce85007838c06125043f603695452f60206688",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantc688ef79d403e5fa96e6bc6715f52a7d7aae3dc4c29d6e8d0bcb598ada126a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f225cc6-8aa0-e0e2-57e2-be8e83c3d397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_full_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x) (Ioi (1 : ℝ)) := by
  have ht : IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Ioi (Real.exp (2 * A))) := by
    apply (show IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioi (Real.exp (2 * A)))
      from integrableOn_zero).congr_fun
    · intro x hx
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using (actualPsi_finite_integrable hA).union ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantc688ef79d403e5fa96e6bc6715f52a7d7aae3dc4c29d6e8d0bcb598ada126a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantc688ef79d403e5fa96e6bc6715f52a7d7aae3dc4c29d6e8d0bcb598ada126a79.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32e6fa12397ab149e32c3ae1e186e56b5412a78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
