# invariantsAdjunction_homEquiv_symm_apply_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0c2930575c4b551cc05f8cbd9a56f4aef78951d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:368f87fe-89df-37cb-de44-f177919373b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff669523-eda0-f4d1-dd0d-6950ba5c02b8",
  "kind": "lemma",
  "lexical_name": "invariantsAdjunction_homEquiv_symm_apply_hom",
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
  "slug": "invariantsadjunction-homequiv-symm-apply-hom--db74f6108257b8a240912183",
  "source": {
    "blob": "e0c2930575c4b551cc05f8cbd9a56f4aef78951d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 284,
    "path": "GRWTSK/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db74f6108257b8a2409121838e61017692459a35b4bb4d73e689fbfb3fe53fc4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff669523-eda0-f4d1-dd0d-6950ba5c02b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invariantsAdjunction_homEquiv_symm_apply_hom
    {X : ModuleCat k} {Y : Rep k G} (f : X ⟶ (invariantsFunctor k G).obj Y) :
    (((invariantsAdjunction k G).homEquiv _ _).symm f).hom.toLinearMap =
      Submodule.subtype _ ∘ₗ f.hom := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Invariants/Variante03761020de06e1843a7294e04d0ced3ef9bfab3d6ba3798b401f72a2c2d1810.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c2930575c4b551cc05f8cbd9a56f4aef78951d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
