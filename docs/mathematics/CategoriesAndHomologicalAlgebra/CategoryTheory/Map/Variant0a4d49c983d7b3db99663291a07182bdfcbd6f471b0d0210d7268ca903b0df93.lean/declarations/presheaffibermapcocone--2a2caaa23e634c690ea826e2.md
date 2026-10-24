# presheafFiberMapCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bbbfcd951bab35662bab3162edec4a3c99447a3caf36b7ce93a76a211c5757c",
  "kind": "def",
  "lexical_name": "presheafFiberMapCocone",
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
  "slug": "presheaffibermapcocone--2a2caaa23e634c690ea826e2",
  "source": {
    "blob": "0f264d0ed5179d3a4f585cde81587b58afc8af20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a2caaa23e634c690ea826e281d062ddb3a0722f65bc74c2eee4097828aa3ed9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bbbfcd951bab35662bab3162edec4a3c99447a3caf36b7ce93a76a211c5757c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def presheafFiberMapCocone (P : Dᵒᵖ ⥤ A) :
    Cocone ((Functor.Elements.π Φ.fiber).op ⋙ F.op ⋙ P) where
  pt := (Φ.map F K).presheafFiber.obj P
  ι.app x := Φ.toPresheafFiberMap F K P x.unop.1 x.unop.2

/-- Given a cocontinuous functor `F : C ⥤ D` between sites `(C, J)` and `(D, K)`,
`P` a presheaf on `D`, then `(Φ.map F K).presheafFiber.obj P` is a colimit
of `P.obj (op (F.obj X))` for `X : C`, `x : Φ.fiber.obj X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f264d0ed5179d3a4f585cde81587b58afc8af20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
