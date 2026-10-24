# uliftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0566e92181e241063d4da76362365a97c71b9303fac38381b226032fdc79c5d9",
  "kind": "def",
  "lexical_name": "uliftFunctor",
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
  "slug": "uliftfunctor--ef81931334e1eedcbe10a165",
  "source": {
    "blob": "226ef3df782b8137f53acded5b429470c7b94948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 405,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef81931334e1eedcbe10a165a0b93ea25e16b023ce718f7862a0e9225039b431",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0566e92181e241063d4da76362365a97c71b9303fac38381b226032fdc79c5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftFunctor : CommMonCat.{v} ⥤ CommMonCat.{max v u} where
  obj X := CommMonCat.of (ULift.{u, v} X)
  map {_ _} f := CommMonCat.ofHom <|
    MulEquiv.ulift.symm.toMonoidHom.comp <| f.hom.comp MulEquiv.ulift.toMonoidHom
  map_id X := by rfl
  map_comp {X Y Z} f g := by rfl

end CommMonCat

variable {X Y : Type u}

section

variable [Monoid X] [Monoid Y]

/-- Build an isomorphism in the category `MonCat` from a `MulEquiv` between `Monoid`s. -/
@[to_additive (attr := simps) AddEquiv.toAddMonCatIso
      "Build an isomorphism in the category `AddMonCat` from\nan `AddEquiv` between `AddMonoid`s."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant42d0ae9c774b7f70cb32de82d27fbd3a674d912a9f88739cc106c285a32b9efe.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `226ef3df782b8137f53acded5b429470c7b94948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
