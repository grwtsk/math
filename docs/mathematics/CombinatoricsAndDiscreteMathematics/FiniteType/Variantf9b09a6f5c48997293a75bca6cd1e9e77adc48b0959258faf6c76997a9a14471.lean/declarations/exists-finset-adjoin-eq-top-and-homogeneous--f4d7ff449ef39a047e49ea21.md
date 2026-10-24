# exists_finset_adjoin_eq_top_and_homogeneous

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
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1613eda-c74f-792d-d037-cdc2d44e0862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84f4b968-01af-2238-32fe-33dce48d9f06",
  "kind": "theorem",
  "lexical_name": "exists_finset_adjoin_eq_top_and_homogeneous",
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
  "slug": "exists-finset-adjoin-eq-top-and-homogeneous--f4d7ff449ef39a047e49ea21",
  "source": {
    "blob": "a62b7a6302c63d657e0012d27c42de44403fa0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d7ff449ef39a047e49ea21af8a2cfed69ba01ec2240ad7a2bc05c3b014995d",
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

Occurrence: `result:84f4b968-01af-2238-32fe-33dce48d9f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finset_adjoin_eq_top_and_homogeneous :
    ∃ s : Finset S, Algebra.adjoin (A := S) (𝒜 0) s = ⊤ ∧
      ∀ i ∈ s, SetLike.IsHomogeneousElem 𝒜 i := by
  classical
  obtain ⟨F, hF⟩ := Algebra.FiniteType.out (R := 𝒜 0) (A := S)
  let ι₀ := Σ (x : F), (DirectSum.decompose 𝒜 x.1).support
  let x (i : ι₀) : S := ((DirectSum.decompose 𝒜) i.1 i.2).1
  refine ⟨Finset.univ.image x, ?_, by simpa using fun f ↦ ⟨_, (DirectSum.decompose 𝒜 f.1 f.2).2⟩⟩
  rw [← top_le_iff, ← hF, Algebra.adjoin_le_iff]
  intro s hs
  rw [← DirectSum.sum_support_decompose 𝒜 s]
  exact sum_mem fun n hn ↦ Algebra.subset_adjoin (by simpa using ⟨⟨⟨s, hs⟩, n, hn⟩, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteType/Variantf9b09a6f5c48997293a75bca6cd1e9e77adc48b0959258faf6c76997a9a14471.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a62b7a6302c63d657e0012d27c42de44403fa0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
