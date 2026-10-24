# weightedBudget_geometric_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "523922de7558f3efe98092259698a06b7ff1c891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0633bb0e-f1a6-c6ba-f044-a9c93a2d46f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffba5c1a-1d1e-7d7b-34f3-df7c215cd1ec",
  "kind": "theorem",
  "lexical_name": "weightedBudget_geometric_bound",
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
  "slug": "weightedbudget-geometric-bound--c2c5d11c5ee29b9739b1b45e",
  "source": {
    "blob": "523922de7558f3efe98092259698a06b7ff1c891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 67,
    "path": "GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c5d11c5ee29b9739b1b45e5e91600ad87dc461a40305b163305dfbb0f82f0b",
  "verification": {
    "reference": "docs/verification/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffba5c1a-1d1e-7d7b-34f3-df7c215cd1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedBudget_geometric_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (contraction epsilon : ℝ)
    (contraction_nonnegative :
      0 ≤ contraction)
    (epsilon_nonnegative :
      0 ≤ epsilon)
    (uniform :
      path.AllArcs
        (fun arc =>
          ‖system.transport arc‖ ≤
              contraction ∧
            certificate.budget arc ≤
              epsilon)) :
    weightedCompensationBudget
        certificate path ≤
      epsilon *
        geometricCompensationFactor
          contraction path.length := by
  induction path with
  | nil =>
      simp [weightedCompensationBudget,
        DeflectionPath.length,
        geometricCompensationFactor]
  | cons arc rest induction =>
      rcases uniform with
        ⟨⟨transportBound, budgetBound⟩,
          restUniform⟩
      have downstream :=
        induction restUniform
      have squareBound :
          ‖system.transport arc‖ ^ 2 ≤
            contraction ^ 2 := by
        nlinarith [norm_nonneg
          (system.transport arc)]
      have geometricNonnegative :=
        geometricCompensationFactor_nonnegative
          contraction rest.length
      have firstProduct :
          ‖system.transport arc‖ ^ 2 *
              weightedCompensationBudget
                certificate rest ≤
            ‖system.transport arc‖ ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) :=
        mul_le_mul_of_nonneg_left
          downstream (sq_nonneg _)
      have secondProduct :
          ‖system.transport arc‖ ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) ≤
            contraction ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) :=
        mul_le_mul_of_nonneg_right
          squareBound
          (mul_nonneg epsilon_nonnegative
            geometricNonnegative)
      calc
        weightedCompensationBudget
            certificate (.cons arc rest) ≤
          epsilon +
            contraction ^ 2 *
              (epsilon *
                geometricCompensationFactor
                  contraction rest.length) := by
          unfold weightedCompensationBudget
          linarith
        _ =
          epsilon *
            geometricCompensationFactor
              contraction
              (DeflectionPath.length
                (.cons arc rest)) := by
          simp [DeflectionPath.length,
            geometricCompensationFactor]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523922de7558f3efe98092259698a06b7ff1c891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
