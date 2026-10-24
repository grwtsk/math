# isometryEquivSignWeightedSumSquares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02779ffddc9eb5625fa23157a993205759d8dbffdb25268bafe6047475eb69f3",
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
  "slug": "isometryequivsignweightedsumsquares--ee4c59d5ed9c9b37002bd816",
  "source": {
    "blob": "caad0999f0751ae0d5a720a090e5e0a09e3e4367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Real/Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee4c59d5ed9c9b37002bd8160e331d10e48f2ac1e8b4cbeb670a8474ce16d751",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Real/Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02779ffddc9eb5625fa23157a993205759d8dbffdb25268bafe6047475eb69f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–57.

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
    by_cases hi : w i = 0
    · simp [hi]
    · simp only [hi, ↓reduceDIte, Units.val_mk0, u]; field_simp; simp
  convert!
    QuadraticMap.isometryEquivBasisRepr (weightedSumSquares ℝ w)
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Real/Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Real/Varianta11e3d7d1e16e33b3122a0742687270bea2776266542ac8fa0aa1168e003f9f2.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caad0999f0751ae0d5a720a090e5e0a09e3e4367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
