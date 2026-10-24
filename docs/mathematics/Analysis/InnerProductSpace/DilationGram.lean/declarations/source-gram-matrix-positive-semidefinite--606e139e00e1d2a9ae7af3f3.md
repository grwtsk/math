# source_gram_matrix_positive_semidefinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b04402ee-d500-5b1b-ea1a-d404b526f786",
  "kind": "theorem",
  "lexical_name": "source_gram_matrix_positive_semidefinite",
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
  "slug": "source-gram-matrix-positive-semidefinite--606e139e00e1d2a9ae7af3f3",
  "source": {
    "blob": "e6f70fee1ac6edaf24dccb14c8f63341d7d4554e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/Analysis/InnerProductSpace/DilationGram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:606e139e00e1d2a9ae7af3f3f905ebbbcc94dc7cad94f745713ac3119fda20f4",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/DilationGram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b04402ee-d500-5b1b-ea1a-d404b526f786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_gram_matrix_positive_semidefinite {ι : Type*} [Finite ι] {A : ℝ}
    (hA : 0 < A)
    (label : ι → ℕ) (positive : ∀ n, 0 < label n) :
    (sourceGramMatrix A label).PosSemidef := by
  classical
  let _ := Fintype.ofFinite ι
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · ext m n
    simpa only [sourceGramMatrix, Matrix.conjTranspose_apply, star_trivial] using
      source_gram_symm (positive n) (positive m)
  · intro w
    have nonnegative := finite_source_gram_nonnegative hA Finset.univ label w
      (fun n _ ↦ positive n)
    simpa only [sourceGramMatrix, Matrix.mulVec, dotProduct, Pi.star_apply, star_trivial,
      Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm] using nonnegative

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceGram
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/DilationGram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/DilationGram.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f70fee1ac6edaf24dccb14c8f63341d7d4554e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
