# Sheaf.ΓHomEquiv_naturality_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74520eb1fede755ad7a31e1799c2c888e27dc0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59261e99-67c4-222f-f9fa-2407877b5083",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37d2ad30-1d7d-29ae-1df9-1386a2cadef4",
  "kind": "lemma",
  "lexical_name": "Sheaf.ΓHomEquiv_naturality_right",
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
  "slug": "sheaf-homequiv-naturality-right--c0896a5b1591a2bbb6f681e6",
  "source": {
    "blob": "74520eb1fede755ad7a31e1799c2c888e27dc0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0896a5b1591a2bbb6f681e69937e918f3db02d8c0953bad48777151c39a3493",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d2ad30-1d7d-29ae-1df9-1386a2cadef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sheaf.ΓHomEquiv_naturality_right [HasGlobalSectionsFunctor J A] {X : A} {F F' : Sheaf J A}
    (f : (Functor.const _).obj X ⟶ F.val) (g : F ⟶ F') :
    ΓHomEquiv (f ≫ g.val) = ΓHomEquiv f ≫ (Γ J A).map g :=
  (congrArg _ ((sheafificationAdjunction J A).homEquiv_naturality_right_symm _ _)).trans
    ((constantSheafΓAdj J A).homEquiv_naturality_right _ _)

/-- Naturality lemma for `ΓHomEquiv` analogous to `Adjunction.homEquiv_naturality_right_symm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant92b889897a20582ec2afb5381a6aab9e80443f6aaecdfd7cdd462da2e96aa902.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74520eb1fede755ad7a31e1799c2c888e27dc0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
