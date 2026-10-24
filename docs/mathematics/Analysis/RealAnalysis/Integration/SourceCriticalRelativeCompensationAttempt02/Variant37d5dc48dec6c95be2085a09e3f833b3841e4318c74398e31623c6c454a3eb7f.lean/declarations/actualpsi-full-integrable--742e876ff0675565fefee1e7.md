# actualPsi_full_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8cb0b8-e181-59cc-534c-8dbd95a75a6a",
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
  "slug": "actualpsi-full-integrable--742e876ff0675565fefee1e7",
  "source": {
    "blob": "d8915a1083d23e7826474dd70fa5a85b3810f151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:742e876ff0675565fefee1e73ae0fc3988c99630dfb0185931478cc3e51b938b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8cb0b8-e181-59cc-534c-8dbd95a75a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_full_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x) (Ioi (1 : ℝ)) := by
  have ht : IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Ioi (Real.exp (2 * A))) := by
    apply (show IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioi (Real.exp (2 * A)))
      from (integrableOn_zero (μ := volume))).congr_fun
    · intro x hx
      change (0 : ℝ) = Chebyshev.psi x * deriv (plainProfile A 1) x
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using (actualPsi_finite_integrable hA).union ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8915a1083d23e7826474dd70fa5a85b3810f151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
