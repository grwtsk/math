# actualPsi_finite_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fcde96c-838a-02f0-36f0-5f94af4a4ee9",
  "kind": "theorem",
  "lexical_name": "actualPsi_finite_integrable",
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
  "slug": "actualpsi-finite-integrable--83d253e25430325f242a0fdb",
  "source": {
    "blob": "4b9fc6dcf3c02f695bd6574933bb90e972be25ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variant20b5691852e27d510c7781947c85dff774301a4a997cc72fa0a4d4ac4f9f52df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83d253e25430325f242a0fdb8d0dd3d1e154eb9f2230bfd7ab2f195a34ee4a9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variant20b5691852e27d510c7781947c85dff774301a4a997cc72fa0a4d4ac4f9f52df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fcde96c-838a-02f0-36f0-5f94af4a4ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_finite_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Ioc (1 : ℝ) (Real.exp (2 * A))) := by
  have hi := integrableOn_mul_sum_Icc ArithmeticFunction.vonMangoldt
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) (actual_derivative_integrable_Icc hA)
  have hh : IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Icc (1 : ℝ) (Real.exp (2 * A))) := by
    apply hi.congr_fun
    · intro x _
      dsimp only
      rw [← Chebyshev.psi_eq_sum_Icc]
      ring
    · exact measurableSet_Icc
  exact hh.mono_set Ioc_subset_Icc_self

/-- Genuine Abel summation of actual Lambda, with closed upper atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variant20b5691852e27d510c7781947c85dff774301a4a997cc72fa0a4d4ac4f9f52df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variant20b5691852e27d510c7781947c85dff774301a4a997cc72fa0a4d4ac4f9f52df.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9fc6dcf3c02f695bd6574933bb90e972be25ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
