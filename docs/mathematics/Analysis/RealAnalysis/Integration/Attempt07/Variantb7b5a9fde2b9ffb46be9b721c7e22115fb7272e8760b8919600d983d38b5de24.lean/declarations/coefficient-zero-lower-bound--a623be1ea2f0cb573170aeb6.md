# coefficient_zero_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefb9125-8d56-58da-5a45-f0ff23c55820",
  "kind": "theorem",
  "lexical_name": "coefficient_zero_lower_bound",
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
  "slug": "coefficient-zero-lower-bound--a623be1ea2f0cb573170aeb6",
  "source": {
    "blob": "fb37817a3b6e56ebadeebe5bc57890471aba7971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a623be1ea2f0cb573170aeb64d62ae208e685d94db86a841467e1a8c3e84ef32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefb9125-8d56-58da-5a45-f0ff23c55820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_zero_lower_bound :
    realGammaR (1 / 2) / 8 ≤ XiToeplitz.coefficient 0 := by
  rw [coefficient_zero_exact]
  have hi : 0 ≤ ∫ u in Ioi (1 : ℝ), fractionalWeight (1 / 2) u :=
    integral_nonneg_of_ae (ae_restrict_of_forall_mem measurableSet_Ioi
      fun u hu => fractionalWeight_nonneg (1 / 2) ((by norm_num : (0 : ℝ) < 1).le.trans hu.le))
  nlinarith [realGammaR_pos (by norm_num : (0 : ℝ) < 1 / 2)]

#print fractionalWeight
#print realGammaR
#print fractionalWeight
#print axioms fractionalWeight
#print fractionalWeight_integrable
#print axioms fractionalWeight_integrable
#print fractionalWeight_nonneg
#print axioms fractionalWeight_nonneg
#print real_centered_euler_integral
#print axioms real_centered_euler_integral
#print riemannZeta_real_euler
#print axioms riemannZeta_real_euler
#print riemannZeta_ofReal_neg
#print axioms riemannZeta_ofReal_neg
#print nontrivial_zero_im_ne_zero
#print axioms nontrivial_zero_im_ne_zero
#print realGammaR
#print axioms realGammaR
#print gammaR_ofReal
#print axioms gammaR_ofReal
#print realGammaR_pos
#print axioms realGammaR_pos
#print xi_real_euler
#print axioms xi_real_euler
#print xi_ofReal_re_pos
#print axioms xi_ofReal_re_pos
#print coefficient_zero_exact
#print axioms coefficient_zero_exact
#print coefficient_zero_pos
#print axioms coefficient_zero_pos
#print coefficient_zero_lower_bound
#print axioms coefficient_zero_lower_bound

#print axioms Zeta0EqZeta
#print axioms XiToeplitz.xi_eq_completed
#print axioms XiToeplitz.coefficient_zero
#print axioms NontrivialZetaZero.mem_critical_strip
#print axioms Real.Gamma_pos_of_pos
end
end ContinuousResearch.ActualRealZetaSign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb37817a3b6e56ebadeebe5bc57890471aba7971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
