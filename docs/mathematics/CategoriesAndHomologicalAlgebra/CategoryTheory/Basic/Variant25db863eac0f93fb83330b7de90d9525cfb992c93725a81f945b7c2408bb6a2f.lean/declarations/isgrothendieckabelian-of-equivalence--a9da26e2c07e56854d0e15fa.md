# IsGrothendieckAbelian.of_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc6d289-c2ca-3517-d378-a8f66bc3328f",
  "kind": "theorem",
  "lexical_name": "IsGrothendieckAbelian.of_equivalence",
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
  "slug": "isgrothendieckabelian-of-equivalence--a9da26e2c07e56854d0e15fa",
  "source": {
    "blob": "2b4b87c3bed0d68f325d6780d7ef61563b8f37dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9da26e2c07e56854d0e15fabb1ec59b64e650dc29512eb7ccc3dee57f287a08",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc6d289-c2ca-3517-d378-a8f66bc3328f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGrothendieckAbelian.of_equivalence [Abelian C] [Abelian D]
    [IsGrothendieckAbelian.{w} C] (α : C ≌ D) : IsGrothendieckAbelian.{w} D := by
  have hasFilteredColimits : HasFilteredColimitsOfSize.{w, w, v₂, u₂} D :=
    ⟨fun _ _ _ => Adjunction.hasColimitsOfShape_of_equivalence α.inverse⟩
  refine ⟨?_, hasFilteredColimits, ?_, ?_⟩
  · exact locallySmall_of_faithful α.inverse
  · refine ⟨fun _ _ _ => ?_⟩
    exact HasExactColimitsOfShape.of_codomain_equivalence _ α
  · exact HasSeparator.of_equivalence α

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4b87c3bed0d68f325d6780d7ef61563b8f37dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
