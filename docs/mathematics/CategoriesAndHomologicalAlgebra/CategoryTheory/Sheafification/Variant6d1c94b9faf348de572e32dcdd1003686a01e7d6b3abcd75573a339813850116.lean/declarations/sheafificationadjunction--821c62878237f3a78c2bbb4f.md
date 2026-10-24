# sheafificationAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1417c48dfe9f2ac73a625ba234fe2f0db2f6894d8757b2f2b5c706420b74dab9",
  "kind": "def",
  "lexical_name": "sheafificationAdjunction",
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
  "slug": "sheafificationadjunction--821c62878237f3a78c2bbb4f",
  "source": {
    "blob": "28e95da6a06ff99d63e4c22b6915d8b841b934e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 643,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:821c62878237f3a78c2bbb4fc506a78e646e8764011c7065d3419d87ef9ce781",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1417c48dfe9f2ac73a625ba234fe2f0db2f6894d8757b2f2b5c706420b74dab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafificationAdjunction : presheafToSheaf J D ⊣ sheafToPresheaf J D :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun P Q =>
        { toFun := fun e => J.toSheafify P ≫ e.val
          invFun := fun e => ⟨J.sheafifyLift e Q.2⟩
          left_inv := fun e => Sheaf.Hom.ext _ _ <| (J.sheafifyLift_unique _ _ _ rfl).symm
          right_inv := fun e => J.toSheafify_sheafifyLift _ _ }
      homEquiv_naturality_left_symm := by
        intro P Q R η γ; ext1; dsimp; symm
        apply J.sheafifyMap_sheafifyLift
      homEquiv_naturality_right := fun η γ => by
        dsimp
        rw [Category.assoc] }
#align category_theory.sheafification_adjunction CategoryTheory.sheafificationAdjunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant6d1c94b9faf348de572e32dcdd1003686a01e7d6b3abcd75573a339813850116.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e95da6a06ff99d63e4c22b6915d8b841b934e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
