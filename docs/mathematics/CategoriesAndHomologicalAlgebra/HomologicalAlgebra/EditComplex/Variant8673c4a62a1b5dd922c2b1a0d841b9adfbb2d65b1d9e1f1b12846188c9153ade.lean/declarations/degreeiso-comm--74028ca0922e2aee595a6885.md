# degreeIso_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02811cb959c95baf6ce620a16f9ba8ffdb3b0b05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb2ab3e4-b384-861a-2813-6057f1964e52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b1230ea-0982-2baa-e0cc-b9a72d9e128a",
  "kind": "theorem",
  "lexical_name": "degreeIso_comm",
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
  "slug": "degreeiso-comm--74028ca0922e2aee595a6885",
  "source": {
    "blob": "02811cb959c95baf6ce620a16f9ba8ffdb3b0b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74028ca0922e2aee595a6885a5ef1ffa1449a0c96f8621561486ca0014d17d59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b1230ea-0982-2baa-e0cc-b9a72d9e128a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeIso_comm (q : Nat) :
    (A.degreeIso (q + 1)).hom ≫ M.toChainComplex.d (q + 1) q =
      M.toChainComplex.d (q + 1) q ≫ (A.degreeIso q).hom := by
  match q with
  | 0 =>
      apply ModuleCat.hom_ext
      exact A.relabel_edit_boundary.symm
  | 1 =>
      apply ModuleCat.hom_ext
      exact A.relabel_relation_boundary.symm
  | 2 =>
      have hd : M.toChainComplex.d 3 2 = 0 := by
        change ChainComplex.of.d M.chainObject M.chainDifferential 3 2 = 0
        rw [show 3 = 2 + 1 by omega, ChainComplex.of_d]
        rfl
      rw [hd]
      simp only [CategoryTheory.Limits.comp_zero,
        CategoryTheory.Limits.zero_comp]
  | q + 3 =>
      simp [degreeIso]

/--
The compatible generator action bundled as an isomorphism of integral chain
complexes.  Its inverse is supplied automatically by the inverse degreewise
equivalences and the proved boundary squares.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EditComplex/Variant8673c4a62a1b5dd922c2b1a0d841b9adfbb2d65b1d9e1f1b12846188c9153ade.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02811cb959c95baf6ce620a16f9ba8ffdb3b0b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
