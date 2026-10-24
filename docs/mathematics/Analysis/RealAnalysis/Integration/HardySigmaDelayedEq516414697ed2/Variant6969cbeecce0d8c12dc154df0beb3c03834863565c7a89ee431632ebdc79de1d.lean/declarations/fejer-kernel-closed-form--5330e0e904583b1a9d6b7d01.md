# fejer_kernel_closed_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e9500f0-5ed1-1662-6c5b-ad916b4cc175",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_closed_form",
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
  "slug": "fejer-kernel-closed-form--5330e0e904583b1a9d6b7d01",
  "source": {
    "blob": "738b9a07216212d85fc41196714020e6eae78238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 378,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5330e0e904583b1a9d6b7d01d860411f37b940f4df4832f4f8f80fea1f6be45f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e9500f0-5ed1-1662-6c5b-ad916b4cc175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_closed_form (n : ℕ) (t : ℝ) (h : Real.sin (t / 2) ≠ 0) :
    fejer_kernel n t = (1 / (2 * (n + 1) : ℝ)) * (Real.sin ((n + 1) * t / 2) / Real.sin (t / 2)) ^ 2 := by
      unfold fejer_kernel at *;
      -- Using the identity $2\sin((j+1/2)t)\sin(t/2) = \cos(jt) - \cos((j+1)t)$, the sum telescopes.
      have h_telescope : ∑ j ∈ Finset.range (n + 1), Real.sin ((j + 1 / 2) * t) = (1 / (2 * Real.sin (t / 2))) * (1 - Real.cos ((n + 1) * t)) := by
        field_simp;
        induction n <;> simp_all +decide [ Finset.sum_range_succ, add_mul, mul_add, Real.sin_add, Real.cos_add ] ; ring_nf;
        · rw [ Real.sin_sq, Real.cos_sq ] ; ring_nf;
        · rw [ ← Complex.ofReal_inj ] ; norm_num [ Complex.sin, Complex.cos ] ; ring_nf;
          norm_num [ sq, ← Complex.exp_add ] ; ring;
      -- Substitute the closed form of the Dirichlet kernel into the sum.
      have h_substitute : ∑ j ∈ Finset.range (n + 1), dirichlet_kernel j t = (1 / (2 * Real.sin (t / 2))) * (∑ j ∈ Finset.range (n + 1), Real.sin ((j + 1 / 2) * t)) := by
        rw [ Finset.mul_sum _ _ _ ] ; refine' Finset.sum_congr rfl fun j hj => _ ; rw [ dirichlet_kernel_closed_form ] ; ring ; aesop;
      simp_all +decide [ mul_pow, Real.sin_sq, Real.cos_sq ] ; ring;
      rw [ Real.sin_sq, Real.cos_sq ] ; ring

/-
Property (a): The Fejér kernel is non-negative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant6969cbeecce0d8c12dc154df0beb3c03834863565c7a89ee431632ebdc79de1d.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738b9a07216212d85fc41196714020e6eae78238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
