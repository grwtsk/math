# isometryEquivSignWeightedSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8528ea5842b36687c2bc1a76db59f632bfec4f1991c04cf8eedb4a92ab75b5ec",
  "kind": "def",
  "lexical_name": "isometryEquivSignWeightedSumSquares",
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
  "slug": "isometryequivsignweightedsumsquares--34402f24ce91411d2f441d0d",
  "source": {
    "blob": "2c98bd62c4c37b82a66b56c6406c092f094dd1d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34402f24ce91411d2f441d0d8606feb4da1efe55983570458ee21ee0cdf2e944",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8528ea5842b36687c2bc1a76db59f632bfec4f1991c04cf8eedb4a92ab75b5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isometryEquivSignWeightedSumSquares (w : ι → ℝ) :
    IsometryEquiv (weightedSumSquares ℝ w)
      (weightedSumSquares ℝ (fun i ↦ (sign (w i) : ℝ))) := by
  let u i := if h : w i = 0 then (1 : ℝˣ) else Units.mk0 (w i) h
  have hu : ∀ i : ι, 1 / √|(u i : ℝ)| ≠ 0 := fun i ↦
    have : (u i : ℝ) ≠ 0 := (u i).ne_zero
    by positivity
  have hwu : ∀ i, w i / |(u i : ℝ)| = sign (w i) := fun i ↦ by
    by_cases hi : w i = 0 <;> field_simp [hi, u]
  convert QuadraticMap.isometryEquivBasisRepr (weightedSumSquares ℝ w)
    ((Pi.basisFun ℝ ι).unitsSMul fun i => .mk0 _ (hu i))
  ext1 v
  classical
  suffices ∑ i, (w i / |(u i : ℝ)|) * v i ^ 2 = ∑ i, w i * (v i ^ 2 * |(u i : ℝ)|⁻¹) by
    simpa [basisRepr_apply, Basis.unitsSMul_apply, ← _root_.sq, mul_pow, ← hwu, Pi.single_apply]
  exact sum_congr rfl fun j _ ↦ by ring

/-- **Sylvester's law of inertia**: A nondegenerate real quadratic form is equivalent to a weighted
sum of squares with the weights being ±1, `SignType` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Real/Variant223c395a490278d1b75c72373ab48e8c363cdfafc068b1e577dfb4161081c736.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c98bd62c4c37b82a66b56c6406c092f094dd1d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
