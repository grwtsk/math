# functorMap_commSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dcaee32-2206-69c6-5f19-59c343c780fd",
  "kind": "lemma",
  "lexical_name": "functorMap_commSq",
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
  "slug": "functormap-commsq--c660bdc8aae097bdc39845cb",
  "source": {
    "blob": "2f82b18e6ee12531455d42696b83b0874c8f439f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c660bdc8aae097bdc39845cbebc1af381dad9c2c2f2a480ee8d3cc5f17bb576d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dcaee32-2206-69c6-5f19-59c343c780fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma functorMap_commSq {n m : ℕ} (h : ¬(m < n)) :
    (Functor.ofOpSequence (functorMap f)).map (homOfLE (by omega : n ≤ m + 1)).op ≫ Pi.π _ m ≫
      eqToHom (functorObj_eq_neg (by omega : ¬(m < n))) =
        (Pi.π (fun i ↦ if _ : i < m + 1 then M i else N i) m) ≫
          eqToHom (functorObj_eq_pos (by omega)) ≫ f m := by
  cases m with
  | zero =>
      have : n = 0 := by omega
      subst this
      simp [functorMap]
  | succ m =>
      rw [← functorMap_commSq_succ f (m + 1)]
      simp only [Functor.ofOpSequence_obj, homOfLE_leOfHom, dite_eq_ite,
        Functor.ofOpSequence_map_homOfLE_succ, add_le_iff_nonpos_right, nonpos_iff_eq_zero,
        one_ne_zero]
      have : homOfLE (by omega : n ≤ m + 1 + 1) =
          homOfLE (by omega : n ≤ m + 1) ≫ homOfLE (by omega : m + 1 ≤ m + 1 + 1) := by simp
      rw [this, op_comp, Functor.map_comp]
      simp only [Functor.ofOpSequence_obj, homOfLE_leOfHom, Functor.ofOpSequence_map_homOfLE_succ,
        Category.assoc, add_le_iff_nonpos_right, nonpos_iff_eq_zero, one_ne_zero]
      congr 1
      exact functorMap_commSq_aux f (by omega) (by omega)

/--
The cone over the tower
```
⋯ → ∏_{n < m} M n × ∏_{n ≥ m} N n → ⋯ → ∏ N
```
with cone point `∏ M`. This is a limit cone, see `CategoryTheory.Limits.SequentialProduct.isLimit`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f82b18e6ee12531455d42696b83b0874c8f439f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
