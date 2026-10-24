# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02e1079a68832bbe32336f155508346362b47e42588fc345d0540e7fdb5229aa",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9dfa40085aca798e17d7c432",
  "source": {
    "blob": "e236b1ee32fcb3a431bb977f90a0eeedbda6db35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 409,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dfa40085aca798e17d7c43213f58f2b7c9fb30c26158953df45ad62805e0bd8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02e1079a68832bbe32336f155508346362b47e42588fc345d0540e7fdb5229aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : (π₂ κ f).Final := by
  rw [Functor.final_iff_of_isFiltered]
  refine ⟨exists_of_j₂, fun {d e} g₁ g₂ ↦ ?_⟩
  obtain ⟨j₂, a, ha⟩ := IsFilteredOrEmpty.cocone_maps g₁ g₂
  obtain ⟨j, b, ⟨c⟩⟩ := exists_of_j₁_of_j₂ e.fst j₂
  obtain ⟨j', g, h, h₁, h₂⟩ := J.exists_hom b (a ≫ c)
  refine ⟨j', g, ?_⟩
  ext
  simp [← h₂, reassoc_of% dsimp% (CostructuredArrow.proj _ _ ⋙
    ObjectProperty.ι _).congr_map ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb5b44920da24a21b4ab4a7eb069ff5b7e4407afacbba76205864e76a9b5dff1b.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e236b1ee32fcb3a431bb977f90a0eeedbda6db35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
