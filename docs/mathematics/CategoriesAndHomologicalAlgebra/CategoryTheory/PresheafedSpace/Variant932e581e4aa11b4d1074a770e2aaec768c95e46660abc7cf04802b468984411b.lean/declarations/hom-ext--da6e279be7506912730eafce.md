# Hom.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "633efd4b83e70dbcb968d6e1351f17be36986f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53c13c11-3d4b-98e2-53e7-334a9fcfeab7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f4a15b6-07ba-858f-141f-35ba2fdddbef",
  "kind": "theorem",
  "lexical_name": "Hom.ext",
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
  "slug": "hom-ext--da6e279be7506912730eafce",
  "source": {
    "blob": "633efd4b83e70dbcb968d6e1351f17be36986f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6e279be7506912730eafceec9e9d2d0ae4a2c4051b84d44affc7c408403acc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f4a15b6-07ba-858f-141f-35ba2fdddbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hom.ext {X Y : PresheafedSpace C} (α β : Hom X Y) (w : α.base = β.base)
    (h : α.c ≫ whiskerRight (eqToHom (by rw [w])) _ = β.c) : α = β := by
  rcases α with ⟨base, c⟩
  rcases β with ⟨base', c'⟩
  dsimp at w
  subst w
  dsimp at h
  erw [whiskerRight_id', comp_id] at h
  subst h
  rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.ext AlgebraicGeometry.PresheafedSpace.Hom.ext

-- TODO including `injections` would make tidy work earlier.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633efd4b83e70dbcb968d6e1351f17be36986f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
