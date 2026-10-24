# exists_finset_adjoin_eq_top_and_homogeneous_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc45ec3-423f-c874-747b-4869f12d91c1",
  "kind": "theorem",
  "lexical_name": "exists_finset_adjoin_eq_top_and_homogeneous_ne_zero",
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
  "slug": "exists-finset-adjoin-eq-top-and-homogeneous-ne-zero--a5ba75d9d78b7617bbbecb10",
  "source": {
    "blob": "395b69c27ad0ff3d6475084228c4219a2786245e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variant487c0a0220ff9d5bf6fc816f149903a587bba9a9ae3c56e08239f163f0024aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5ba75d9d78b7617bbbecb1085f19349c66ade6f9d2c72d0ba7cc42605d5ec0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteType/Variant487c0a0220ff9d5bf6fc816f149903a587bba9a9ae3c56e08239f163f0024aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc45ec3-423f-c874-747b-4869f12d91c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_adjoin_eq_top_and_homogeneous_ne_zero :
    ∃ s : Finset S, Algebra.adjoin (A := S) (𝒜 0) s = ⊤ ∧ ∀ i ∈ s, ∃ n ≠ 0, i ∈ 𝒜 n := by
  obtain ⟨s, h₁, h₂⟩ := exists_finset_adjoin_eq_top_and_homogeneous 𝒜
  choose! n hn using h₂
  refine ⟨s.filter (n · ≠ 0), ?_, by simpa using fun i hi hin ↦ ⟨n i, hin, hn i hi⟩⟩
  rw [← top_le_iff, ← h₁, Algebra.adjoin_le_iff]
  rintro i hi
  by_cases hi0 : n i = 0
  · exact Subalgebra.algebraMap_mem
      (Algebra.adjoin (𝒜 0) (s.filter (n · ≠ 0)).toSet) ⟨i, hi0 ▸ hn i hi⟩
  · exact Algebra.subset_adjoin (by simpa [hi0] using hi)

end GradedAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteType/Variant487c0a0220ff9d5bf6fc816f149903a587bba9a9ae3c56e08239f163f0024aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variant487c0a0220ff9d5bf6fc816f149903a587bba9a9ae3c56e08239f163f0024aec.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `395b69c27ad0ff3d6475084228c4219a2786245e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
