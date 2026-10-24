# boundaryIntegral_principalSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4988417-15fc-48b8-4a47-bd3eb9faab33",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_principalSum",
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
  "slug": "boundaryintegral-principalsum--27b97ca839f0fecab255e5f0",
  "source": {
    "blob": "04a5862bf8ecf094317d1cfa2f0e02a615a1ab11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 183,
    "path": "GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b97ca839f0fecab255e5f048a2778bc6c8d231e02091461fdda8252154283b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4988417-15fc-48b8-4a47-bd3eb9faab33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_principalSum (S : Finset ℂ) (c : ℂ → ℂ) (l r T : ℝ)
    (hlr : l < r) (hT : 0 < T)
    (hS : ∀ p ∈ S, l < p.re ∧ p.re < r ∧ |p.im| < T) :
    boundaryIntegral (principalSum S c) l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) * ∑ p ∈ S, c p := by
  have he (p : ℂ) (hp : p ∈ S) : EdgeIntegrable (fun z => c p / (z - p)) l r T := by
    obtain ⟨hl, hr, ht⟩ := hS p hp
    apply edgeIntegrable_of_analytic_germs _ l r T hlr.le hT.le
    · intro y hy u hu
      apply analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      apply sub_ne_zero.mpr
      intro hz
      have him := congrArg Complex.im hz
      have hi : y = p.im := by simpa using him
      rw [hi] at hy
      linarith
    · intro d hd t ht'
      apply analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      apply sub_ne_zero.mpr
      intro hz
      have hre := congrArg Complex.re hz
      have hi : d = p.re := by simpa using hre
      rcases hd with rfl | rfl <;> linarith
  change boundaryIntegral (fun z => ∑ p ∈ S, c p / (z - p)) l r T = _
  rw [boundaryIntegral_finset_sum S (fun p z => c p / (z - p)) l r T he, Finset.mul_sum]
  exact Finset.sum_congr rfl (fun p hp => boundaryIntegral_simple_pole p (c p) l r T
    (hS p hp).1 (hS p hp).2.1 (hS p hp).2.2)

/-- Finite simple-principal-part residue theorem, derived from subtraction and normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a5862bf8ecf094317d1cfa2f0e02a615a1ab11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
