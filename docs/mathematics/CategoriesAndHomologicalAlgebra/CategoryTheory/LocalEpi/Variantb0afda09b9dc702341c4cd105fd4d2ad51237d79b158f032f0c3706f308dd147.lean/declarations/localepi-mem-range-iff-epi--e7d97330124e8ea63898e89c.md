# localEpi_mem_range_iff_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f1d0f9c-ebda-bf2a-ca93-68ef60e3f91a",
  "kind": "lemma",
  "lexical_name": "localEpi_mem_range_iff_epi",
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
  "slug": "localepi-mem-range-iff-epi--e7d97330124e8ea63898e89c",
  "source": {
    "blob": "a20dcbb4e9f5f6bb82651e9317781a852b334c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalEpi/Variantb0afda09b9dc702341c4cd105fd4d2ad51237d79b158f032f0c3706f308dd147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d97330124e8ea63898e89c5aaf15b2156d13a14fec816c71d7c7a9b8e0aec5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalEpi/Variantb0afda09b9dc702341c4cd105fd4d2ad51237d79b158f032f0c3706f308dd147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1d0f9c-ebda-bf2a-ca93-68ef60e3f91a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localEpi_mem_range_iff_epi {X Y : C} (f : X ⟶ Y) :
    localEpi (· ∈ Set.range G.obj) f ↔ Epi (F.map f) := by
  rw [← dsimp% (localEpi (· ∈ Set.range G.obj)).postcomp_iff _ _ (isLocal_adj_unit_app adj Y),
    dsimp% adj.unit.naturality f,
    dsimp% (localEpi (· ∈ Set.range G.obj)).precomp_iff _ _ (isLocal_adj_unit_app adj X)]
  refine ⟨fun h ↦ ⟨fun {Z} u v huv ↦ ?_⟩, ?_⟩
  · refine G.map_injective ?_
    apply h ⟨Z, rfl⟩
    simp [← Functor.map_comp, huv]
  · rintro h _ ⟨Z, rfl⟩ u v huv
    obtain ⟨u, rfl⟩ := G.map_surjective u
    obtain ⟨v, rfl⟩ := G.map_surjective v
    simp only [← G.map_comp, G.map_injective_iff, cancel_epi] at huv
    rw [huv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalEpi/Variantb0afda09b9dc702341c4cd105fd4d2ad51237d79b158f032f0c3706f308dd147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalEpi/Variantb0afda09b9dc702341c4cd105fd4d2ad51237d79b158f032f0c3706f308dd147.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20dcbb4e9f5f6bb82651e9317781a852b334c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
