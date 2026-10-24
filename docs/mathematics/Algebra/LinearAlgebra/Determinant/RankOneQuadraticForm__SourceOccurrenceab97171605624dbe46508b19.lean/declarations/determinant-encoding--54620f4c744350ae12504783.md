# determinant_encoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc49524-713d-ef68-1b3b-845017881156",
  "kind": "theorem",
  "lexical_name": "determinant_encoding",
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
  "slug": "determinant-encoding--54620f4c744350ae12504783",
  "source": {
    "blob": "f9c8fcc057d97f18cfa7411a0ef9ed6841023f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54620f4c744350ae1250478390023fe38577f80301221897de80ce264705587e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc49524-713d-ef68-1b3b-845017881156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determinant_encoding {ι : Type*} [Fintype ι] [DecidableEq ι]
    (H : Matrix ι ι ℝ) (c : ι → ℝ) :
    (1 + vecMulVec (H.mulVec c) c).det =
      1 + ∑ m, ∑ n, c m * c n * H m n := by
  let A : Matrix ι (Fin 1) ℝ := fun i _ ↦ (H.mulVec c) i
  let B : Matrix (Fin 1) ι ℝ := fun _ j ↦ c j
  have hAB : A * B = vecMulVec (H.mulVec c) c := by
    ext i j
    change (∑ _k : Fin 1, (H.mulVec c) i * c j) = (H.mulVec c) i * c j
    simp
  rw [← hAB, Matrix.det_one_add_mul_comm, Matrix.det_fin_one]
  change 1 + (∑ m, c m * (H.mulVec c) m) = _
  simp only [Matrix.mulVec, dotProduct]
  congr 1
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Literal final closed-cutoff index type; every source integer remains present. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c8fcc057d97f18cfa7411a0ef9ed6841023f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
