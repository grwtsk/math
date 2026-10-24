# PreIndSpreads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48518578c09feaae6cd1f08da69ae4e47488437dbf7c0eb36012f60610925578",
  "kind": "class",
  "lexical_name": "PreIndSpreads",
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
  "slug": "preindspreads--9e5b8319e5d116f14e5e8821",
  "source": {
    "blob": "1184c5a2026cbdd73613572f5d6298658c093707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e5b8319e5d116f14e5e88216cefa1bbe5b6528b4430fc7024e39b00a238cd40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48518578c09feaae6cd1f08da69ae4e47488437dbf7c0eb36012f60610925578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreIndSpreads (P : MorphismProperty C) : Prop where
  exists_isPushout {J : Type w} [SmallCategory J] [IsFiltered J] {D : J ⥤ C}
    {c : Cocone D} (_ : IsColimit c) {T : C} (f : c.pt ⟶ T) :
    P f →
    ∃ (j : J) (T' : C) (f' : D.obj j ⟶ T') (g : T' ⟶ T),
      IsPushout (c.ι.app j) f' f g ∧ P f'

alias exists_isPushout_of_isFiltered := PreIndSpreads.exists_isPushout

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `P` ind-spreads and all under categories are finitely accessible, `ind P`
is stable under composition if `P` is. -/
@[stacks 0BSI "The stacks project lemma is for the special case of ind-étale ring homomorphisms."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1184c5a2026cbdd73613572f5d6298658c093707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
