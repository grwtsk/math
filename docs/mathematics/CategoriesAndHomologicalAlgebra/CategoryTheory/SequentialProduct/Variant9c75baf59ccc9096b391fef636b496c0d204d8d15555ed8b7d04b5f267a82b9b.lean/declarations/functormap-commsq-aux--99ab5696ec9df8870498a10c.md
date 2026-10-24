# functorMap_commSq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4df8689d-f081-3117-e54a-38e1d776f4ee",
  "kind": "lemma",
  "lexical_name": "functorMap_commSq_aux",
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
  "slug": "functormap-commsq-aux--99ab5696ec9df8870498a10c",
  "source": {
    "blob": "2f82b18e6ee12531455d42696b83b0874c8f439f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ab5696ec9df8870498a10c990cd2a4a0ca5dcce583ab2356c4d605ac9fcaf7",
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

Occurrence: `result:4df8689d-f081-3117-e54a-38e1d776f4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorMap_commSq_aux {n m k : ℕ} (h : n ≤ m) (hh : ¬(k < m)) :
    (Functor.ofOpSequence (functorMap f)).map (homOfLE h).op ≫ Pi.π _ k ≫
      eqToHom (functorObj_eq_neg (by omega : ¬(k < n))) =
        (Pi.π (fun i ↦ if _ : i < m then M i else N i) k) ≫
          eqToHom (functorObj_eq_neg hh) := by
  induction' h using Nat.leRec with m h ih
  · simp
  · specialize ih (by omega)
    have : homOfLE (by omega : n ≤ m + 1) =
        homOfLE (by omega : n ≤ m) ≫ homOfLE (by omega : m ≤ m + 1) := by simp
    rw [this, op_comp, Functor.map_comp]
    slice_lhs 2 4 => rw [ih]
    simp only [Functor.ofOpSequence_obj, homOfLE_leOfHom, Functor.ofOpSequence_map_homOfLE_succ,
      functorMap, dite_eq_ite, limMap_π_assoc, Discrete.functor_obj_eq_as, Discrete.natTrans_app]
    split_ifs
    simp [dif_neg (by omega : ¬(k < m))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant9c75baf59ccc9096b391fef636b496c0d204d8d15555ed8b7d04b5f267a82b9b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f82b18e6ee12531455d42696b83b0874c8f439f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
