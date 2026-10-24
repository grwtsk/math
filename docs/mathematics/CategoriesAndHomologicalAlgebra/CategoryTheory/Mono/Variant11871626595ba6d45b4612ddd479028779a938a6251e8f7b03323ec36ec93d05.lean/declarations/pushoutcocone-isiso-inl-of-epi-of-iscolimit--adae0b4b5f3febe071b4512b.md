# PushoutCocone.isIso_inl_of_epi_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d943a31f-61ed-fff7-4242-06fa82612cbf",
  "kind": "lemma",
  "lexical_name": "PushoutCocone.isIso_inl_of_epi_of_isColimit",
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
  "slug": "pushoutcocone-isiso-inl-of-epi-of-iscolimit--adae0b4b5f3febe071b4512b",
  "source": {
    "blob": "60f2a146af1d933427fd97b77d15df394b7fae80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 389,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adae0b4b5f3febe071b4512bda4d901cf85611fe482540240632bed2b6cf636f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d943a31f-61ed-fff7-4242-06fa82612cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PushoutCocone.isIso_inl_of_epi_of_isColimit {t : PushoutCocone f f} (ht : IsColimit t) :
    IsIso t.inl := by
  refine ⟨⟨PushoutCocone.IsColimit.desc ht (𝟙 _) (𝟙 _) (by simp), by simp, ?_⟩⟩
  apply PushoutCocone.IsColimit.hom_ext ht
  · simp
  · simp [inl_eq_inr_of_epi_eq]

variable {f} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mono/Variant11871626595ba6d45b4612ddd479028779a938a6251e8f7b03323ec36ec93d05.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f2a146af1d933427fd97b77d15df394b7fae80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
