# thetaLogError_abs_le_psi_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eba57e21-7d15-465d-8422-ddc5e115f809",
  "kind": "theorem",
  "lexical_name": "thetaLogError_abs_le_psi_error",
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
  "slug": "thetalogerror-abs-le-psi-error--9ab2ad090a00e7d60dd621ed",
  "source": {
    "blob": "749692eff05ad85662ed039e9fb026876b9fe043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab2ad090a00e7d60dd621edf85653c29e8b528a511919846ccf269526d5b4bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eba57e21-7d15-465d-8422-ddc5e115f809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_abs_le_psi_error (u : ℝ) (hu : 0 ≤ u) :
    |thetaLogError u| ≤ |errorProfile u| * Real.exp (-u) +
      2 * u * Real.exp (-u / 2) := by
  have ht := Chebyshev.abs_psi_sub_theta_le_sqrt_mul_log
    (Real.one_le_exp_iff.mpr hu)
  rw [Real.log_exp, ← Real.exp_half] at ht
  have hb : |Chebyshev.theta (Real.exp u) - Real.exp u| ≤
      |errorProfile u| + 2 * Real.exp (u / 2) * u := by
    calc
      _ = |(Chebyshev.psi (Real.exp u) - Real.exp u) -
        (Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u))| := by congr 1; ring
      _ ≤ |Chebyshev.psi (Real.exp u) - Real.exp u| +
        |Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u)| := abs_sub _ _
      _ ≤ _ := by
        rw [errorProfile, chebyshevError_eq_psi_sub]
        exact add_le_add le_rfl ht
  rw [thetaLogError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (|errorProfile u| + 2 * Real.exp (u / 2) * u) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right hb (Real.exp_pos _).le
    _ = _ := by
      rw [add_mul]
      congr 1
      calc
        _ = 2 * u * (Real.exp (u / 2) * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add]; congr 2; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749692eff05ad85662ed039e9fb026876b9fe043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
