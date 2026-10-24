# shiftFunctorAdd_hom_app_obj_of_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e2498251dbebdd95dc25450c14a1ed9b8b21798",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59b74594-dd71-584f-7579-95942ad92805",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac8dc7c9-c6c9-7f0c-9c69-36d94b703895",
  "kind": "lemma",
  "lexical_name": "shiftFunctorAdd_hom_app_obj_of_induced",
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
  "slug": "shiftfunctoradd-hom-app-obj-of-induced--6f2c91e8e9d68026ac028727",
  "source": {
    "blob": "2e2498251dbebdd95dc25450c14a1ed9b8b21798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f2c91e8e9d68026ac0287279f9f327628bdfb8e79409598d23dc1c7f1554275",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac8dc7c9-c6c9-7f0c-9c69-36d94b703895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorAdd_hom_app_obj_of_induced (a b : A) (X : C) :
    letI := HasShift.induced F A s i
    (shiftFunctorAdd D a b).hom.app (F.obj X) =
      (i (a + b)).hom.app X ≫
        F.map ((shiftFunctorAdd C a b).hom.app X) ≫
        (i b).inv.app ((shiftFunctor C a).obj X) ≫
        (s b).map ((i a).inv.app X) := by
  simp only [ShiftMkCore.shiftFunctorAdd_eq, HasShift.Induced.add_hom_app_obj]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variant06b33b48f622d75d0deeb2e4286a5b0350ed6707a6a6951d32c3b1efb98ebe0a.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2498251dbebdd95dc25450c14a1ed9b8b21798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
