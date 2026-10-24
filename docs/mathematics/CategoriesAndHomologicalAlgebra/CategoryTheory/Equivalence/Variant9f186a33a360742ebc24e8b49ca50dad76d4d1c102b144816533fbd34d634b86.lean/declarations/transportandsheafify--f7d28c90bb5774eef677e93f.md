# transportAndSheafify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36457ae9553807489162b96b4ed01048a934aad6a8215dce289f5cc90d43794f",
  "kind": "def",
  "lexical_name": "transportAndSheafify",
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
  "slug": "transportandsheafify--f7d28c90bb5774eef677e93f",
  "source": {
    "blob": "935b6d2858b83de8c782654e3eaa5a22b5e67bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7d28c90bb5774eef677e93f58d6b0f025846599a49f7051d343c38e40bf56ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36457ae9553807489162b96b4ed01048a934aad6a8215dce289f5cc90d43794f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportAndSheafify : (Cᵒᵖ ⥤ A) ⥤ Sheaf J A :=
  e.op.congrLeft.functor ⋙ presheafToSheaf _ _ ⋙ (e.sheafCongr J K A).inverse

/-- An auxiliary definition for the sheafification adjunction. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant9f186a33a360742ebc24e8b49ca50dad76d4d1c102b144816533fbd34d634b86.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `935b6d2858b83de8c782654e3eaa5a22b5e67bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
