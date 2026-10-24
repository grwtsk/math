# mk_of_exists_extremalEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6e42821-91c2-656d-be4b-f46998c2a684",
  "kind": "lemma",
  "lexical_name": "mk_of_exists_extremalEpi",
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
  "slug": "mk-of-exists-extremalepi--bcbb2d5e0e5ce522414a5b7e",
  "source": {
    "blob": "52f9efeededcaba39511281e13d960303c303fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcbb2d5e0e5ce522414a5b7ed791de4b538d102b47d339dd741923b567df0e0e",
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

Occurrence: `result:d6e42821-91c2-656d-be4b-f46998c2a684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_of_exists_extremalEpi
    (hS : ∀ (X : C), ∃ (ι : Type w) (s : ι → C) (_ : ∀ i, P (s i)) (c : Cofan s) (_ : IsColimit c)
      (p : c.pt ⟶ X), ExtremalEpi p) :
    P.IsStrongGenerator := by
  rw [isStrongGenerator_iff]
  refine ⟨IsSeparating.mk_of_exists_epi.{w} (fun X ↦ ?_), fun X Y i _ hi ↦ ?_⟩
  · obtain ⟨ι, s, hs, c, hc, p, _⟩ := hS X
    exact ⟨ι, s, hs, c, hc, p, inferInstance⟩
  · obtain ⟨ι, s, hs, c, hc, p, _⟩ := hS Y
    replace hi (j : ι) := hi (s j) (hs j) (c.inj j ≫ p)
    choose φ hφ using hi
    exact ExtremalEpi.isIso p (Cofan.IsColimit.desc hc φ) _
      (Cofan.IsColimit.hom_ext hc _ _ (by simp [hφ]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant64ff4e88c16b7d6863ae4b1851105aa6eaddc8bb7162ffed1d19306586423c6b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52f9efeededcaba39511281e13d960303c303fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
