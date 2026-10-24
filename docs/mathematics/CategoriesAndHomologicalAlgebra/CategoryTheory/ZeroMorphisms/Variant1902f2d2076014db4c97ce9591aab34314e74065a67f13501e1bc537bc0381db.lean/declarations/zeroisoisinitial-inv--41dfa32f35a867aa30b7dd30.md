# zeroIsoIsInitial_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:754a8369-b5c8-cb62-f04a-8dcd5bbfc2af",
  "kind": "theorem",
  "lexical_name": "zeroIsoIsInitial_inv",
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
  "slug": "zeroisoisinitial-inv--41dfa32f35a867aa30b7dd30",
  "source": {
    "blob": "ee5fd1a09206f06c59b6626b54dde4e1241cc13a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant1902f2d2076014db4c97ce9591aab34314e74065a67f13501e1bc537bc0381db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41dfa32f35a867aa30b7dd300e68d1bcb6514fb72f16f8fb7f83efbebecb94ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant1902f2d2076014db4c97ce9591aab34314e74065a67f13501e1bc537bc0381db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754a8369-b5c8-cb62-f04a-8dcd5bbfc2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroIsoIsInitial_inv {X : C} (t : IsInitial X) : (zeroIsoIsInitial t).inv = 0 := by ext
#align category_theory.limits.has_zero_object.zero_iso_is_initial_inv CategoryTheory.Limits.HasZeroObject.zeroIsoIsInitial_inv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant1902f2d2076014db4c97ce9591aab34314e74065a67f13501e1bc537bc0381db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Variant1902f2d2076014db4c97ce9591aab34314e74065a67f13501e1bc537bc0381db.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5fd1a09206f06c59b6626b54dde4e1241cc13a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
