# coefficient_eq_thetaPhi_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:971a98cf-a723-c002-c8aa-6080e1f2fcef",
  "kind": "theorem",
  "lexical_name": "coefficient_eq_thetaPhi_Ioi",
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
  "slug": "coefficient-eq-thetaphi-ioi--6e1d96f7910e9ee987480f51",
  "source": {
    "blob": "40ca9044f394cdce184140cd82465d2c8f6c34f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variantf358e3869e338fdb07b1ebaaba2d99068ffca36de77386c812bc6aa293eefef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e1d96f7910e9ee987480f515b64df36b2c625d9100776b62e84a19f86b33915",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variantf358e3869e338fdb07b1ebaaba2d99068ffca36de77386c812bc6aa293eefef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:971a98cf-a723-c002-c8aa-6080e1f2fcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_eq_thetaPhi_Ioi (n : ℕ) :
    XiToeplitz.coefficient n =
      8 * ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t := by
  rw [XiToeplitz.coefficient, xi_iteratedDeriv_even_eq_thetaPhi,
    thetaPhi_complex_even_moment_eq]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis n t) =
      fun t : ℝ => (thetaPhi t * (2 * t) ^ (2 * n)) / ((2 * n).factorial : ℝ) := by
    funext t
    unfold evenBasis
    ring
  rw [hfun, integral_div]
  norm_num only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.re_ofNat, Complex.im_ofNat, mul_zero, sub_zero]
  ring

/-- Adding the singleton zero changes no theta moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variantf358e3869e338fdb07b1ebaaba2d99068ffca36de77386c812bc6aa293eefef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variantf358e3869e338fdb07b1ebaaba2d99068ffca36de77386c812bc6aa293eefef6.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ca9044f394cdce184140cd82465d2c8f6c34f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
