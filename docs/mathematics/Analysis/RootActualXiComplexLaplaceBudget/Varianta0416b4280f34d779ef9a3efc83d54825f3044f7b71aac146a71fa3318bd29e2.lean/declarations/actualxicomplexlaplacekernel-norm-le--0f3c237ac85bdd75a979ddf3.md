# actualXiComplexLaplaceKernel_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b99d9f-c4a1-5522-e5f2-e3849b31f971",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplaceKernel_norm_le",
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
  "slug": "actualxicomplexlaplacekernel-norm-le--0f3c237ac85bdd75a979ddf3",
  "source": {
    "blob": "de6e128785108b72b2eb012d060a2eae6ab8affb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f3c237ac85bdd75a979ddf3dcb612b89040b4dcb8b0a307a6b81bb9442c6cfc",
  "verification": {
    "reference": "docs/verification/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b99d9f-c4a1-5522-e5f2-e3849b31f971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplaceKernel_norm_le (z : ℂ) {t : ℝ} (ht : Real.log 7 ≤ t) :
    ‖(actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))‖ ≤
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t) := by
  have hF : |actualAnchoredXiTailPrimitive t| ≤
      2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2) :=
    (actualAnchoredXiTailPrimitive_abs_le ht).trans
      (by nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
  simp only [mul_re, neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
  calc
    _ ≤ (2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2)) *
        Real.exp (-z.re * t) := mul_le_mul_of_nonneg_right hF (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- Genuine complex source L1 precedes every signed improper integral estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6e128785108b72b2eb012d060a2eae6ab8affb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
