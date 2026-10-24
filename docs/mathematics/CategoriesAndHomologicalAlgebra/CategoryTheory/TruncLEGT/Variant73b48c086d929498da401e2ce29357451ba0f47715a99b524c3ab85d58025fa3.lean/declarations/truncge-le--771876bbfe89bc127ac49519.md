# truncGEδLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e127ae67cff82537d0dae1797c29caebf39337e6adafaebea8d2475f365a9d",
  "kind": "def",
  "lexical_name": "truncGEδLE",
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
  "slug": "truncge-le--771876bbfe89bc127ac49519",
  "source": {
    "blob": "202074c01563e99f18e608926bd1dc76f0191711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant73b48c086d929498da401e2ce29357451ba0f47715a99b524c3ab85d58025fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:771876bbfe89bc127ac4951997fd23a1277585a5151feb9077631f946d9f316f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant73b48c086d929498da401e2ce29357451ba0f47715a99b524c3ab85d58025fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e127ae67cff82537d0dae1797c29caebf39337e6adafaebea8d2475f365a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def truncGEδLE (a b : ℤ) (h : a + 1 = b) :
    t.truncGE b ⟶ t.truncLE a ⋙ shiftFunctor C (1 : ℤ) :=
  t.truncGEδLT b ≫ Functor.whiskerRight (t.truncLEIsoTruncLT a b h).inv (shiftFunctor C (1 : ℤ))

/-- The distinguished triangle `(t.truncLE a).obj A ⟶ A ⟶ (t.truncGE b).obj A ⟶ ...`
as a functor `C ⥤ Triangle C` when `t` is a `t`-structure on a pretriangulated
category `C` and `a + 1 = b`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant73b48c086d929498da401e2ce29357451ba0f47715a99b524c3ab85d58025fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TruncLEGT/Variant73b48c086d929498da401e2ce29357451ba0f47715a99b524c3ab85d58025fa3.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `202074c01563e99f18e608926bd1dc76f0191711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
