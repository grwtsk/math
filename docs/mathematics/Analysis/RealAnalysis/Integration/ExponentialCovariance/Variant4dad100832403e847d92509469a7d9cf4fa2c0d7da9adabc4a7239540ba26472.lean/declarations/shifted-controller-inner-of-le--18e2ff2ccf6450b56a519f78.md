# shifted_controller_inner_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ca1af7-fd22-e0be-5a43-397a7371097b",
  "kind": "theorem",
  "lexical_name": "shifted_controller_inner_of_le",
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
  "slug": "shifted-controller-inner-of-le--18e2ff2ccf6450b56a519f78",
  "source": {
    "blob": "800d43d9914c031f6aea3971d108d8b33017640c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e2ff2ccf6450b56a519f78753d6943da6acfe876791ac7549fcf83a85aa01e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ca1af7-fd22-e0be-5a43-397a7371097b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_controller_inner_of_le (a b : ℝ) (ha : 0 < a) (hb : 0 < b)
    (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) := by
  calc
    _ = inner ℂ (fullShift (-u) (fullShift u (zeroExtension (controller a ha))))
        (fullShift (-u) (fullShift v (zeroExtension (controller b hb)))) :=
      ((fullShift (-u)).inner_map_map _ _).symm
    _ = inner ℂ (zeroExtension (controller a ha))
        (fullShift (v - u) (zeroExtension (controller b hb))) := by
      rw [fullShift_neg_cancel, fullShift_add]
      congr 2
      ring
    _ = _ := by
      rw [controller, exponential_inner_shift (v - u) (sub_nonneg.mpr huv)]
      change Complex.exp (-(a : ℂ) * ((v - u : ℝ) : ℂ)) *
        inner ℂ (controller a ha) (controller b hb) = _
      rw [controller_inner]
      simp only [Complex.ofReal_div, Complex.ofReal_exp, Complex.ofReal_mul,
        Complex.ofReal_neg, Complex.ofReal_one, mul_one_div]

/-- Both time-order sectors compute the full shifted-exponential Gram entry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant4dad100832403e847d92509469a7d9cf4fa2c0d7da9adabc4a7239540ba26472.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800d43d9914c031f6aea3971d108d8b33017640c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
