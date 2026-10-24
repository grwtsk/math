# functorExtension₁CompWhiskeringLeftToKaroubiIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb0b1c34c460b7aacd89c3bc1b2371757a3de66105537514e107cda2dacd697b",
  "kind": "def",
  "lexical_name": "functorExtension₁CompWhiskeringLeftToKaroubiIso",
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
  "slug": "functorextension-compwhiskeringlefttokaroubiiso--7898679efd03e5b3659162af",
  "source": {
    "blob": "60bf91b98dccf80cd9960c8887048ecc1da5f403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7898679efd03e5b3659162af70b4c3035562e8f3b513cc43a8f71c34e5739d15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb0b1c34c460b7aacd89c3bc1b2371757a3de66105537514e107cda2dacd697b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorExtension₁CompWhiskeringLeftToKaroubiIso :
    functorExtension₁ C D ⋙ (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) ≅ 𝟭 _ :=
  NatIso.ofComponents
    (fun F => NatIso.ofComponents
      (fun X =>
        { hom := { f := (F.obj X).p }
          inv := { f := (F.obj X).p } })
      (fun {X Y} f => by simp))
    (by aesop_cat)

/-- The counit isomorphism of the equivalence `(C ⥤ Karoubi D) ≌ (Karoubi C ⥤ Karoubi D)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant855dd1993441bfacce24f589dc3c1e5c32a4142ef03eb237a5e36b7cf65aae0a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60bf91b98dccf80cd9960c8887048ecc1da5f403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
