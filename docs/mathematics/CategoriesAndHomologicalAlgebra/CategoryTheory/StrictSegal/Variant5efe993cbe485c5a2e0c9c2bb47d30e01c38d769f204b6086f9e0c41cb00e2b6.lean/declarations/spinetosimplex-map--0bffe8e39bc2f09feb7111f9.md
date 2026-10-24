# spineToSimplex_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:856b657f-9b57-61f2-7482-6e146c9ee0a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3812c5e-d0e7-e599-c12b-adfa8d549fd7",
  "kind": "lemma",
  "lexical_name": "spineToSimplex_map",
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
  "slug": "spinetosimplex-map--0bffe8e39bc2f09feb7111f9",
  "source": {
    "blob": "afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 371,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bffe8e39bc2f09feb7111f971bf7f12a41bd428c1225e4509938ad867283c9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3812c5e-d0e7-e599-c12b-adfa8d549fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spineToSimplex_map {X Y : SSet.{u}} (sx : StrictSegal X)
    (sy : StrictSegal Y) {n : ℕ} (f : Path X (n + 1)) (σ : X ⟶ Y) :
    sy.spineToSimplex (f.map σ) = σ.app _ (sx.spineToSimplex f) := by
  apply sy.spineInjective
  ext k
  dsimp only [spineEquiv, Equiv.coe_fn_mk, spine_arrow]
  rw [← types_comp_apply (σ.app _) (Y.map _), ← σ.naturality, types_comp_apply,
    spineToSimplex_arrow, spineToSimplex_arrow, Path.map_arrow]

variable (f : Path X (n + 1))
variable {i : Fin (n + 1)} {j : Fin (n + 2)}

/-- If we take the path along the spine of the `j`th face of a `spineToSimplex`,
the common vertices will agree with those of the original path `f`. In particular,
a vertex `i` with `i < j` can be identified with the same vertex in `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
