# exists_finset_adjoin_eq_top_and_homogeneous_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a62b7a6302c63d657e0012d27c42de44403fa0dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:933e7f5e-6285-d986-6d02-6eee566b7e02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fbda890-5492-b88e-3ed9-4c29487ac0c7",
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
  "slug": "exists-finset-adjoin-eq-top-and-homogeneous-ne-zero--641ddd7a29a421ee09f56d88",
  "source": {
    "blob": "a62b7a6302c63d657e0012d27c42de44403fa0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:641ddd7a29a421ee09f56d88fb1b938834dd689731db6f8fc3be2e175dd5ce02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fbda890-5492-b88e-3ed9-4c29487ac0c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a62b7a6302c63d657e0012d27c42de44403fa0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
