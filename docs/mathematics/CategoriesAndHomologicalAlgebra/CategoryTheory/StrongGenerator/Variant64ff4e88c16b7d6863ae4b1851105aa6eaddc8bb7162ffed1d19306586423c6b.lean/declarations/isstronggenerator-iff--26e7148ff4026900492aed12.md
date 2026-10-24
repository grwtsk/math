# isStrongGenerator_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e41b30b9-cff3-9e68-8d25-0ad78cb628b2",
  "kind": "lemma",
  "lexical_name": "isStrongGenerator_iff",
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
  "slug": "isstronggenerator-iff--26e7148ff4026900492aed12",
  "source": {
    "blob": "52f9efeededcaba39511281e13d960303c303fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e7148ff4026900492aed12935c7fb6dcc9afe3809862a24ae6751d23ff3e15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e41b30b9-cff3-9e68-8d25-0ad78cb628b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStrongGenerator_iff :
    P.IsStrongGenerator ↔ P.IsSeparating ∧
      ∀ ⦃X Y : C⦄ (i : X ⟶ Y) [Mono i],
        (∀ (G : C) (_ : P G), Function.Surjective (fun (f : G ⟶ X) ↦ f ≫ i)) → IsIso i := by
  refine ⟨fun ⟨hS₁, hS₂⟩ ↦ ⟨hS₁, fun X Y i _ h ↦ ?_⟩,
    fun ⟨hS₁, hS₂⟩ ↦ ⟨hS₁, fun X A hA ↦ ?_⟩⟩
  · rw [Subobject.isIso_iff_mk_eq_top]
    refine hS₂ _ (fun G hG g ↦ ?_)
    rw [Subobject.mk_factors_iff]
    exact h G hG g
  · rw [← Subobject.isIso_arrow_iff_eq_top]
    exact hS₂ A.arrow (fun G hG g ↦ ⟨_, Subobject.factorThru_arrow _ _ (hA G hG g)⟩)

namespace IsStrongGenerator

section

variable (hP : P.IsStrongGenerator)

include hP

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52f9efeededcaba39511281e13d960303c303fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
