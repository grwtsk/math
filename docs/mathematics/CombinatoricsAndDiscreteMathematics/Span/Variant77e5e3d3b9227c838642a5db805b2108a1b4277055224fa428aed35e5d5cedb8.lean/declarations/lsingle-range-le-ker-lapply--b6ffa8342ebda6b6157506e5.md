# lsingle_range_le_ker_lapply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "047570535a4ce63765fc66619335376781c4e015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8a5a22a-c6e4-add1-eb61-ab4b236cc2c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2554aa1-a1fe-6fe0-c19d-5a8badb4df31",
  "kind": "theorem",
  "lexical_name": "lsingle_range_le_ker_lapply",
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
  "slug": "lsingle-range-le-ker-lapply--b6ffa8342ebda6b6157506e5",
  "source": {
    "blob": "047570535a4ce63765fc66619335376781c4e015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6ffa8342ebda6b6157506e5ac2a7d3d93aa7a5328c7bdf11d95072a994ef829",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2554aa1-a1fe-6fe0-c19d-5a8badb4df31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsingle_range_le_ker_lapply (s t : Set α) (h : Disjoint s t) :
    ⨆ a ∈ s, LinearMap.range (lsingle a : M →ₗ[R] α →₀ M) ≤
      ⨅ a ∈ t, ker (lapply a : (α →₀ M) →ₗ[R] M) := by
  refine iSup_le fun a₁ => iSup_le fun h₁ => range_le_iff_comap.2 ?_
  simp only [(ker_comp _ _).symm, eq_top_iff, SetLike.le_def, mem_ker, comap_iInf, mem_iInf]
  intro b _ a₂ h₂
  have : a₂ ≠ a₁ := fun eq => h.le_bot ⟨h₁, eq.symm ▸ h₂⟩
  exact single_eq_of_ne this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047570535a4ce63765fc66619335376781c4e015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
