# IsColimit.pushoutCoconeEquivBinaryCofanFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6f779db4af0ea9e91c8a449571822bfe5f22f10e1f34af3ffd7306c11f7f900",
  "kind": "def",
  "lexical_name": "IsColimit.pushoutCoconeEquivBinaryCofanFunctor",
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
  "slug": "iscolimit-pushoutcoconeequivbinarycofanfunctor--cda6e8bafb85f0025bf2feba",
  "source": {
    "blob": "7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cda6e8bafb85f0025bf2febaff47bd420edf8d7fdd351b28b1cec88784d4e445",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6f779db4af0ea9e91c8a449571822bfe5f22f10e1f34af3ffd7306c11f7f900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.pushoutCoconeEquivBinaryCofanFunctor {c : PushoutCocone f g} (hc : IsColimit c) :
    IsColimit <| pushoutCoconeEquivBinaryCofan.functor.obj c :=
  BinaryCofan.isColimitMk
    (fun s ↦ Under.homMk
      (hc.desc (PushoutCocone.mk s.inl.right s.inr.right (s.inl.w.trans s.inr.w.symm))) <| by
        simpa using! s.inl.w)
    (fun s ↦ Under.UnderMorphism.ext (hc.fac _ _)) (fun s ↦ Under.UnderMorphism.ext (hc.fac _ _))
      fun s m e₁ e₂ ↦ by
    ext1
    refine PushoutCocone.IsColimit.hom_ext hc ?_ ?_
    · simpa using! congr(($e₁).right)
    · simpa using! congr(($e₂).right)

set_option backward.defeqAttrib.useBackward true in
/-- A pushout cocone from `X` is a colimit if its corresponding binary cofan in `Under X` is a
colimit. -/
-- This could also be `(IsColimit.ofCoconeEquiv pushoutCoconeEquivBinaryCofan.symm).symm hc`,
-- but possibly bad defeqs?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
