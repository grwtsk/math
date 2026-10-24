# quotientPathsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27e998a2b4bec3e53935b75b3987db93a2d4e5a2cdc70a4788b34b84a3685a87",
  "kind": "def",
  "lexical_name": "quotientPathsEquiv",
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
  "slug": "quotientpathsequiv--bc85abffddfa8107a401d4d8",
  "source": {
    "blob": "f06be9349e3ca960ac3af8536dc9d38c698cc1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc85abffddfa8107a401d4d839d45e9966586808464d200042dbbfb21e7c1052",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27e998a2b4bec3e53935b75b3987db93a2d4e5a2cdc70a4788b34b84a3685a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientPathsEquiv : Quotient (pathsHomRel C) ≌ C where
  functor := quotientPathsTo C
  inverse := toQuotientPaths C
  unitIso :=
    NatIso.ofComponents
      (fun X => by cases X; rfl)
      (Quot.ind fun f => by exact Quot.sound (HomRel.CompClosure.of (by simp)))
  counitIso := NatIso.ofComponents (fun _ => Iso.refl _) (fun f => by simp)
  functor_unitIso_comp X := by
    cases X
    simp only [Functor.id_obj,
               quotientPathsTo_obj, Functor.comp_obj, toQuotientPaths_obj_as,
               NatIso.ofComponents_hom_app, Iso.refl_hom, quotientPathsTo_map, Category.comp_id]
    rfl

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06be9349e3ca960ac3af8536dc9d38c698cc1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
