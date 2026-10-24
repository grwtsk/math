# hσ'_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c268039b698220b1a8f6e9ab6574d40972da9d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8ef0b6c1102ce0f99e00b652cd6db8783c1463813fd788a339a53d9419f94eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7559df3e-7686-d7e0-3166-058e33688570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b024523c-e7bf-a9d5-8e0a-394a1e652d57",
  "kind": "theorem",
  "lexical_name": "hσ'_naturality",
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
  "slug": "h-naturality--fa08d8558cfae698fd50f35b",
  "source": {
    "blob": "6c268039b698220b1a8f6e9ab6574d40972da9d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variantb8ef0b6c1102ce0f99e00b652cd6db8783c1463813fd788a339a53d9419f94eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa08d8558cfae698fd50f35b5a50146898e0d8fcf24285b92fc4e7eb92777b83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variantb8ef0b6c1102ce0f99e00b652cd6db8783c1463813fd788a339a53d9419f94eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b024523c-e7bf-a9d5-8e0a-394a1e652d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hσ'_naturality (q : ℕ) (n m : ℕ) (hnm : c.Rel m n) {X Y : SimplicialObject C} (f : X ⟶ Y) :
    f.app (op ⦋n⦌) ≫ hσ' q n m hnm = hσ' q n m hnm ≫ f.app (op ⦋m⦌) := by
  obtain rfl : n + 1 = m := hnm
  -- `simp? [hσ', hσ]` says:
  simp only [AlternatingFaceMapComplex.obj_X, hσ', hσ, Int.reduceNeg, eqToHom_refl, comp_id]
  split_ifs
  · rw [zero_comp, comp_zero]
  · simp

/-- For each q, `Hσ q` is a natural transformation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variantb8ef0b6c1102ce0f99e00b652cd6db8783c1463813fd788a339a53d9419f94eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopies/Variantb8ef0b6c1102ce0f99e00b652cd6db8783c1463813fd788a339a53d9419f94eb.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c268039b698220b1a8f6e9ab6574d40972da9d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
