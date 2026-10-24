# lift'_eq_freeGroup_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b08b3431-a631-0f89-f44f-630b4e63113b",
  "kind": "theorem",
  "lexical_name": "lift'_eq_freeGroup_lift",
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
  "slug": "lift-eq-freegroup-lift--0bf76a320692cc9b80793f04",
  "source": {
    "blob": "f45ccde0db75c3649c9d6bec5f5150b6137530b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 109,
    "path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf76a320692cc9b80793f04711cf9cbe7911dbfc627b84272900e5e9b6ef88c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b08b3431-a631-0f89-f44f-630b4e63113b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift'_eq_freeGroup_lift {A : Type u} : @lift (FreeGroup A) _ _ H _ = FreeGroup.lift :=
  rfl
#align is_free_group.lift'_eq_free_group_lift IsFreeGroup.lift'_eq_freeGroup_lift

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45ccde0db75c3649c9d6bec5f5150b6137530b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
