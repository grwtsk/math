# lower_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6a72a06-087d-5430-e158-5e547efd8ca1",
  "kind": "lemma",
  "lexical_name": "lower_integral",
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
  "slug": "lower-integral--e0ffb11d55713c060bdb82d5",
  "source": {
    "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0ffb11d55713c060bdb82d5f3285963f2a18affa95e734f59dfb79b44564395",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6a72a06-087d-5430-e158-5e547efd8ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lower_integral (i : Fin 16) :
    (∫ t : ℝ in node i.val..node (i.val + 1), lower i t) = mass i := by
  have hs := intervalIntegral.mul_integral_comp_mul_add (f := lower i)
    (a := 0) (b := 1) (1 / 16 : ℝ) (node i.val)
  have hnext : (1 / 16 : ℝ) + node i.val = node (i.val + 1) := by
    unfold node; push_cast; ring
  simp only [mul_zero, zero_add, mul_one, hnext] at hs
  rw [← hs]
  have hf : (fun v : ℝ => lower i (v / 16 + node i.val)) = fun v =>
      (∑ j : Fin 7, deficitCoefficient i j * (basis j v *
        ((8 * center i - 7 * node i.val) + (-(7 / 16)) * v))) / center i ^ 8 := by
    funext v
    unfold lower density tangent7
    rw [show 16 * (v / 16 + node i.val - 2) - (i.val : ℝ) = v by unfold node; ring]
    rw [Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro j _
    ring
  simp only [one_div, inv_mul_eq_div]
  rw [hf, intervalIntegral.integral_div, intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul, linear_moment]
    unfold mass
    simp only [neg_mul, add_neg_eq_sub]
    ring
  · intro j _
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Finite rational arithmetic from the old exact coefficient table, not quadrature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
