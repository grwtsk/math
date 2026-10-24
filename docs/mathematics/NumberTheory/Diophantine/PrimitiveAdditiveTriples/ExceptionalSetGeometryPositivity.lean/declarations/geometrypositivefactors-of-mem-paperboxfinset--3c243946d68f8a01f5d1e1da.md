# geometryPositiveFactors_of_mem_paperBoxFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11fc231d-a716-0d29-3a9d-98283d8beb7b",
  "kind": "theorem",
  "lexical_name": "geometryPositiveFactors_of_mem_paperBoxFinset",
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
  "slug": "geometrypositivefactors-of-mem-paperboxfinset--3c243946d68f8a01f5d1e1da",
  "source": {
    "blob": "e34744d8edf664d4aa6e6711ff6bc56a4520b7bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c243946d68f8a01f5d1e1dade8212df2dc9edf6df1db854dfa6ec450794c891",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11fc231d-a716-0d29-3a9d-98283d8beb7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometryPositiveFactors_of_mem_paperBoxFinset {d : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (residual_pos : ∀ r : Fin 3, 0 < p.residual r)
    (hq : q ∈ paperBoxFinset p) :
    GeometryPositiveFactors p q I I' I'' := by
  classical
  have filtered := Finset.mem_filter.mp hq
  have strictA : ∀ i, PaperDyadic (q.1 i) (p.A i) := filtered.2.1
  have strictB : ∀ i, PaperDyadic (q.2.1 i) (p.B i) := filtered.2.2.1
  have strictC : ∀ i, PaperDyadic (q.2.2 i) (p.C i) := filtered.2.2.2
  have positiveA : ∀ i, 0 < q.1 i :=
    fun i => coordinate_pos_of_paperDyadic (strictA i)
  have positiveB : ∀ i, 0 < q.2.1 i :=
    fun i => coordinate_pos_of_paperDyadic (strictB i)
  have positiveC : ∀ i, 0 < q.2.2 i :=
    fun i => coordinate_pos_of_paperDyadic (strictC i)
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · unfold geometryCoefficientA
    exact Nat.mul_pos (residual_pos 0)
      (paperComplementMonomial_pos I positiveA)
  · unfold geometryVariableA
    exact paperSelectedMonomial_pos I positiveA
  · unfold geometryCoefficientB
    exact Nat.mul_pos (residual_pos 1)
      (paperComplementMonomial_pos I' positiveB)
  · unfold geometryVariableB
    exact paperSelectedMonomial_pos I' positiveB
  · unfold geometryCoefficientC
    exact Nat.mul_pos (residual_pos 2)
      (paperComplementMonomial_pos I'' positiveC)
  · unfold geometryVariableC
    exact paperSelectedMonomial_pos I'' positiveC

/-- The exact source-paper admissibility predicate already supplies residual
positivity, so it discharges the only extra premise of the factor theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPositivity.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e34744d8edf664d4aa6e6711ff6bc56a4520b7bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
