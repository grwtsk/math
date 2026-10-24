# isCofiltered_costructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d06920-b0a6-b7a6-aa9e-a3b6f732a6ac",
  "kind": "lemma",
  "lexical_name": "isCofiltered_costructuredArrow",
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
  "slug": "iscofiltered-costructuredarrow--3cf662b2b05f78e1bf6a6e41",
  "source": {
    "blob": "c458c6d88c1f12663fa0a99f8eddecff3dc6c814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cf662b2b05f78e1bf6a6e41d168a39aa1909f0e237954fd50b6d5fce7709a9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d06920-b0a6-b7a6-aa9e-a3b6f732a6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isCofiltered_costructuredArrow (i' : I') :
    IsCofiltered (CostructuredArrow (left c) ((right c' f).obj i')) := by
  refine isCofiltered_costructuredArrow_of_isCofiltered_of_exists _ _ ?_ ?_
  · obtain ⟨j, p, hp⟩ := exists_hom_of_preservesColimit_yoneda hc (f ≫ c'.π.app i')
    exact ⟨j, ⟨Under.homMk p hp⟩⟩
  · intro a s s'
    obtain ⟨j, t, ht⟩ := exists_eq_of_preservesColimit_yoneda_self (X := D'.obj i') (i := a) hc
      s.right s'.right ((Under.w s).trans (Under.w s').symm)
    exact ⟨j, t, by ext; simpa using ht⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c458c6d88c1f12663fa0a99f8eddecff3dc6c814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
