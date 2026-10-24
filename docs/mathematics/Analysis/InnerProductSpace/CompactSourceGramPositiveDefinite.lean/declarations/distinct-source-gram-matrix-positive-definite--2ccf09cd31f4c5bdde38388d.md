# distinct_source_gram_matrix_positive_definite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b89ead2-7a7c-ec3d-eb86-3b4c5af9d9d4",
  "kind": "theorem",
  "lexical_name": "distinct_source_gram_matrix_positive_definite",
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
  "slug": "distinct-source-gram-matrix-positive-definite--2ccf09cd31f4c5bdde38388d",
  "source": {
    "blob": "dd196b2be4eac37f447b64e3189f94eefd7504d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 126,
    "path": "GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ccf09cd31f4c5bdde38388d6d8dc1bbf704f272bcb0d5d1db4b13a1b6a071f2",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b89ead2-7a7c-ec3d-eb86-3b4c5af9d9d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_source_gram_matrix_positive_definite {ι : Type*} [Fintype ι]
    {A : ℝ} (hA : 0 < A) (label : ι → ℕ) (positive : ∀ n, 0 < label n)
    (distinct : Function.Injective label) : (SourceGram.sourceGramMatrix A label).PosDef := by
  classical
  apply Matrix.PosDef.of_dotProduct_mulVec_pos
  · ext m n
    simpa only [SourceGram.sourceGramMatrix, Matrix.conjTranspose_apply, star_trivial] using
      SourceGram.source_gram_symm (positive n) (positive m)
  · intro w nonzero
    have someWeight : ∃ n ∈ (Finset.univ : Finset ι), w n ≠ 0 := by
      by_contra absent
      apply nonzero
      funext n
      by_contra nonzeroAtN
      exact absent ⟨n, Finset.mem_univ n, nonzeroAtN⟩
    have strict := finite_source_gram_positive hA Finset.univ label
      (fun n _ ↦ positive n) (fun _ _ _ _ equal ↦ distinct equal) w someWeight
    simpa only [SourceGram.sourceGramMatrix, Matrix.mulVec, dotProduct, Pi.star_apply,
      star_trivial, Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm] using strict

end

end GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd196b2be4eac37f447b64e3189f94eefd7504d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
