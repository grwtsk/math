# middle_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaa499ddb2c04449dc0d3b8fc3147b399b4427a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e6c364a-2106-0800-1f69-2cb10d169e24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cead5bd-a967-2452-8623-4afd1a8cc451",
  "kind": "theorem",
  "lexical_name": "middle_assoc'",
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
  "slug": "middle-assoc--15cdea7130ba333ab8f25769",
  "source": {
    "blob": "eaa499ddb2c04449dc0d3b8fc3147b399b4427a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15cdea7130ba333ab8f2576940284d1b09eeddba271ec34637e5fbb8b4b6148b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cead5bd-a967-2452-8623-4afd1a8cc451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem middle_assoc' :
    (actLeft P Q ▷ T.X) ≫ actRight P Q =
      (α_ R.X _ T.X).hom ≫ (R.X ◁ actRight P Q) ≫ actLeft P Q := by
  refine (cancel_epi ((tensorLeft _ ⋙ tensorRight _).map (coequalizer.π _ _))).1 ?_
  dsimp [X]
  slice_lhs 1 2 => rw [← comp_whiskerRight, whiskerLeft_π_actLeft, comp_whiskerRight,
    comp_whiskerRight]
  slice_lhs 3 4 => rw [π_tensor_id_actRight]
  slice_lhs 2 3 => rw [associator_naturality_left]
  slice_rhs 1 2 => rw [associator_naturality_middle]
  slice_rhs 2 3 => rw [← whiskerLeft_comp, π_tensor_id_actRight,
    whiskerLeft_comp, whiskerLeft_comp]
  slice_rhs 4 5 => rw [whiskerLeft_π_actLeft]
  slice_rhs 3 4 => rw [associator_inv_naturality_right]
  slice_rhs 4 5 => rw [whisker_exchange]
  simp

end

end TensorBimod

section

variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorLeft X)]
variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorRight X)]

/-- Tensor product of two bimodule objects as a bimodule object. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variante48a152c4700a4232d7ad4ece529b50639eab63a470b894f73c7c64c5bf0db15.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa499ddb2c04449dc0d3b8fc3147b399b4427a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
