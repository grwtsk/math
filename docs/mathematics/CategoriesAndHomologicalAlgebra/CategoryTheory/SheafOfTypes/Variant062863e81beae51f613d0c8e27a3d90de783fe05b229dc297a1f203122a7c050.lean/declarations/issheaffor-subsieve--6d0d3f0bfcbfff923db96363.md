# isSheafFor_subsieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1141ed79-b196-e01f-912a-b7bfa44e2ff2",
  "kind": "theorem",
  "lexical_name": "isSheafFor_subsieve",
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
  "slug": "issheaffor-subsieve--6d0d3f0bfcbfff923db96363",
  "source": {
    "blob": "268f9c1f5276189c603b1987bfa1cb0111258b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 726,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0d3f0bfcbfff923db963630d5deea818ad9087e4a77a6cb5c7f0bae835877a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1141ed79-b196-e01f-912a-b7bfa44e2ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheafFor_subsieve (P : Cᵒᵖ ⥤ Type w) {S : Sieve X} {R : Presieve X}
    (h : (S : Presieve X) ≤ R) (trans : ∀ ⦃Y⦄ (f : Y ⟶ X),
      IsSheafFor P (S.pullback f : Presieve Y)) :
    IsSheafFor P R :=
  isSheafFor_subsieve_aux P h (by simpa using trans (𝟙 _)) fun Y f _ => (trans f).isSeparatedFor
#align category_theory.presieve.is_sheaf_for_subsieve CategoryTheory.Presieve.isSheafFor_subsieve

/-- A presheaf is separated for a topology if it is separated for every sieve in the topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f9c1f5276189c603b1987bfa1cb0111258b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
