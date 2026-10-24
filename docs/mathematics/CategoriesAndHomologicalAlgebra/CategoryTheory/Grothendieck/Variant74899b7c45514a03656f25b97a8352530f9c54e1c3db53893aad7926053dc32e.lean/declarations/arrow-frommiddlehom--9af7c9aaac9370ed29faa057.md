# Arrow.fromMiddleHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc37ccaf1fc88bb340ad787801e294b2caa032b8f18c2745cd30fd50dc8fcb5",
  "kind": "def",
  "lexical_name": "Arrow.fromMiddleHom",
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
  "slug": "arrow-frommiddlehom--9af7c9aaac9370ed29faa057",
  "source": {
    "blob": "b001069f2fce3f3efc933d7a0e48cc12fbe91e7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 564,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9af7c9aaac9370ed29faa0575b24b8813a49b4510f412005b6477d0df68a8e6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc37ccaf1fc88bb340ad787801e294b2caa032b8f18c2745cd30fd50dc8fcb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Arrow.fromMiddleHom {X : C} {S : J.Cover X} {T : ∀ I : S.Arrow, J.Cover I.Y}
    (I : (S.bind T).Arrow) : I.middle ⟶ X :=
  I.hf.choose_spec.choose_spec.choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b001069f2fce3f3efc933d7a0e48cc12fbe91e7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
