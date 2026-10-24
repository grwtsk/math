# IsSheafFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0bc7b8584804ae0edb89d974d20ed9b95944df5f02cfbe320ce6a43eb9fa07e",
  "kind": "def",
  "lexical_name": "IsSheafFor",
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
  "slug": "issheaffor--23241c88df13b746b75bf31a",
  "source": {
    "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 450,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23241c88df13b746b75bf31ae5f49751c6a3dbeae80562f170d400a1d5da3ed2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0bc7b8584804ae0edb89d974d20ed9b95944df5f02cfbe320ce6a43eb9fa07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSheafFor (P : Cᵒᵖ ⥤ Type w) (R : Presieve X) : Prop :=
  ∀ x : FamilyOfElements P R, x.Compatible → ∃! t, x.IsAmalgamation t
#align category_theory.presieve.is_sheaf_for CategoryTheory.Presieve.IsSheafFor

/-- This is an equivalent condition to be a sheaf, which is useful for the abstraction to local
operators on elementary toposes. However this definition is defined only for sieves, not presieves.
The equivalence between this and `IsSheafFor` is given in `isSheafFor_iff_yonedaSheafCondition`.
This version is also useful to establish that being a sheaf is preserved under isomorphism of
presheaves.

See the discussion before Equation (3) of [MM92], Chapter III, Section 4. See also C2.1.4 of
[Elephant]. This is also a direct reformulation of <https://stacks.math.columbia.edu/tag/00Z8>.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c974151d5bc1b2d9b9e8deaf62a471c7cf45100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
