# toEventualRanges_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed793973-3d5e-4c51-3d9f-ab0c37c3dcd0",
  "kind": "theorem",
  "lexical_name": "toEventualRanges_nonempty",
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
  "slug": "toeventualranges-nonempty--d50e79187dcb0537a54eee1c",
  "source": {
    "blob": "281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d50e79187dcb0537a54eee1cfdce24ed46b5dcfe758cb11c97ad81b1cb9ff2b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed793973-3d5e-4c51-3d9f-ab0c37c3dcd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toEventualRanges_nonempty (h : F.IsMittagLeffler) [∀ j : J, Nonempty (F.obj j)] (j : J) :
    Nonempty (F.toEventualRanges.obj j) := by
  let ⟨i, f, h⟩ := F.isMittagLeffler_iff_eventualRange.1 h j
  rw [toEventualRanges_obj, h]
  infer_instance
#align category_theory.functor.to_eventual_ranges_nonempty CategoryTheory.Functor.toEventualRanges_nonempty

/-- If `F` has all arrows surjective, then it "factors through a poset". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
