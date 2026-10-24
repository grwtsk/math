# wittStructureRat_vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1ade278846b14868c9cf530dd5e0a4a842b27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec850bf8-473a-47ce-0d77-b800fb988668",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0708c5b-3188-4023-daf1-52aace02efe7",
  "kind": "theorem",
  "lexical_name": "wittStructureRat_vars",
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
  "slug": "wittstructurerat-vars--2fd8382dfc30bf3bb14e635b",
  "source": {
    "blob": "6ee1ade278846b14868c9cf530dd5e0a4a842b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 391,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fd8382dfc30bf3bb14e635b3a31873b87f28c96a3126be4be931f39ed81caa7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0708c5b-3188-4023-daf1-52aace02efe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittStructureRat_vars [Fintype idx] (Φ : MvPolynomial idx ℚ) (n : ℕ) :
    (wittStructureRat p Φ n).vars ⊆ Finset.univ ×ˢ Finset.range (n + 1) := by
  rw [wittStructureRat]
  intro x hx
  simp only [Finset.mem_product, true_and_iff, Finset.mem_univ, Finset.mem_range]
  obtain ⟨k, hk, hx'⟩ := mem_vars_bind₁ _ _ hx
  obtain ⟨i, -, hx''⟩ := mem_vars_bind₁ _ _ hx'
  obtain ⟨j, hj, rfl⟩ := mem_vars_rename _ _ hx''
  rw [wittPolynomial_vars, Finset.mem_range] at hj
  replace hk := xInTermsOfW_vars_subset p _ hk
  rw [Finset.mem_range] at hk
  exact lt_of_lt_of_le hj hk
#align witt_structure_rat_vars wittStructureRat_vars

-- we could relax the fintype on `idx`, but then we need to cast from finset to set.
-- for our applications `idx` is always finite.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1ade278846b14868c9cf530dd5e0a4a842b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
