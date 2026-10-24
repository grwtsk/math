# actualNegativeEdgeComplement_scaled_eventually_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d87c6d1-79bd-6037-83a1-91b2afd5cf92",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeComplement_scaled_eventually_positive",
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
  "slug": "actualnegativeedgecomplement-scaled-eventually-positive--b7cdca3675e31b99ef2a4557",
  "source": {
    "blob": "459ef58bdd181272a2c9823ac00e3bf5cfde2398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant02ce4696ffcd57f09a2125bc67780797eef192e15a7ace2461d4d3048166d14b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7cdca3675e31b99ef2a45572cce511930be92756f32165fd6715506259f03b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant02ce4696ffcd57f09a2125bc67780797eef192e15a7ace2461d4d3048166d14b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d87c6d1-79bd-6037-83a1-91b2afd5cf92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeComplement_scaled_eventually_positive :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeConstant / 2 ≤
        A ^ 9 * Real.exp (-A) * actualNegativeEdgeComplement A := by
  have hc := actualNegativeEdgeConstant_pos
  have hev := actualMertensResidual_scaled_tendsto_zero.eventually
    (Ioi_mem_nhds (by linarith : -(actualNegativeEdgeConstant / 2) < 0))
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 hev
  obtain ⟨R1,hR1,hcomp⟩ := actualNegativeEdgeComplement_eventually_above_residual
  refine ⟨max R1 R0,hR1.trans (le_max_left _ _),?_⟩
  intro A hA
  have h1 : R1 ≤ A := (le_max_left _ _).trans hA
  have h0 : R0 ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hs : 0 ≤ A ^ 9 * Real.exp (-A) := by positivity
  have hm := mul_le_mul_of_nonneg_left (hcomp A h1) hs
  have he : (A ^ 9 * Real.exp (-A)) *
      (actualNegativeEdgeConstant * Real.exp A / A ^ 9) = actualNegativeEdgeConstant := by
    rw [Real.exp_neg]
    field_simp
  rw [mul_add, he] at hm
  have hr := hR0 A h0
  linarith

/-- Actual complete complementary growth has the same exponential scale as the negative window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant02ce4696ffcd57f09a2125bc67780797eef192e15a7ace2461d4d3048166d14b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894bSourceActualEdge/Variant02ce4696ffcd57f09a2125bc67780797eef192e15a7ace2461d4d3048166d14b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459ef58bdd181272a2c9823ac00e3bf5cfde2398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
