# Exact.isZero_X₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55807fdd-f606-5e28-39e0-4641bdf398fd",
  "kind": "lemma",
  "lexical_name": "Exact.isZero_X₂_iff",
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
  "slug": "exact-iszero-x-iff--0a0b1ecea51c31e19e0f38ee",
  "source": {
    "blob": "e9c7f8d577dd727ed3f697649fc410e1d5247c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 492,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0b1ecea51c31e19e0f38ee8ff6c4b5368e898ac4fb48ce57a74f063118cbf2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55807fdd-f606-5e28-39e0-4641bdf398fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Exact.isZero_X₂_iff (hS : S.Exact) : IsZero S.X₂ ↔ S.f = 0 ∧ S.g = 0 := by
  constructor
  · intro h
    exact ⟨h.eq_of_tgt _ _, h.eq_of_src _ _⟩
  · rintro ⟨hf, hg⟩
    exact hS.isZero_X₂ hf hg

variable (S)

/-- A splitting for a short complex `S` consists of the data of a retraction `r : X₂ ⟶ X₁`
of `S.f` and section `s : X₃ ⟶ X₂` of `S.g` which satisfy `r ≫ S.f + S.g ≫ s = 𝟙 _` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantd0cdec42853774bdbf47919d8aac865d34caf889749b6e4b37ca614f52da8168.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c7f8d577dd727ed3f697649fc410e1d5247c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
