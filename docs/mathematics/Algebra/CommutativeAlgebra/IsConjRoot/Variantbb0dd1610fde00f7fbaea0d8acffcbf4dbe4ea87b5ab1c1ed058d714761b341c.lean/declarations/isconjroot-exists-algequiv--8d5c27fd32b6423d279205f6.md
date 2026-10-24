# IsConjRoot.exists_algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd9f0eb93edac6bdedb10ab906150f8eed729c86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3b4f8c5-ba46-58c2-8bf2-ac789614953e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2455d667-49be-5f33-7b77-42204bd897b4",
  "kind": "theorem",
  "lexical_name": "IsConjRoot.exists_algEquiv",
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
  "slug": "isconjroot-exists-algequiv--8d5c27fd32b6423d279205f6",
  "source": {
    "blob": "cd9f0eb93edac6bdedb10ab906150f8eed729c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 179,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d5c27fd32b6423d279205f62794f6ef7674116100a1e7b740f92c127a56f4ef",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2455d667-49be-5f33-7b77-42204bd897b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsConjRoot.exists_algEquiv [Normal K L] {x y : L} (h : IsConjRoot K x y) :
    ∃ σ : L ≃ₐ[K] L, σ y = x := by
  obtain ⟨σ, hσ⟩ :=
    exists_algHom_of_splits_of_aeval (normal_iff.mp inferInstance) (h ▸ minpoly.aeval K x)
  exact ⟨AlgEquiv.ofBijective σ (σ.normal_bijective _ _ _), hσ⟩

/--
Let `L / K` be a normal field extension. For any two elements `x` and `y` in `L`, `y` is a
conjugate root of `x` if and only if there exists a `K`-automorphism `σ : L ≃ₐ[K] L` such
that `σ y = x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variantbb0dd1610fde00f7fbaea0d8acffcbf4dbe4ea87b5ab1c1ed058d714761b341c.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9f0eb93edac6bdedb10ab906150f8eed729c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
