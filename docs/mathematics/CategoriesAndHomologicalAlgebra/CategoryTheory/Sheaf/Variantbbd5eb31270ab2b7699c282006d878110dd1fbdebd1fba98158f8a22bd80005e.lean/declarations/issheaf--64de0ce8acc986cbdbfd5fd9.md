# IsSheaf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26fa00f4bf1307fb49f408fb7ec75bdee593aa7e98a676f31d50a493b3b9d1f4",
  "kind": "def",
  "lexical_name": "IsSheaf'",
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
  "slug": "issheaf--64de0ce8acc986cbdbfd5fd9",
  "source": {
    "blob": "64cf924e016cc5f22a15de45aadc0babea681345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 644,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64de0ce8acc986cbdbfd5fd9853bfa58f082500e19df48dbc7a3ae003375da64",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26fa00f4bf1307fb49f408fb7ec75bdee593aa7e98a676f31d50a493b3b9d1f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheaf' (P : Cᵒᵖ ⥤ A) : Prop :=
  ∀ (U : C) (R : Presieve U) (_ : generate R ∈ J U), Nonempty (IsLimit (Fork.ofι _ (w R P)))

-- Again I wonder whether `UnivLE` can somehow be used to allow `s` to take
-- values in a more general universe.
/-- (Implementation). An auxiliary lemma to convert between sheaf conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantbbd5eb31270ab2b7699c282006d878110dd1fbdebd1fba98158f8a22bd80005e.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64cf924e016cc5f22a15de45aadc0babea681345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
