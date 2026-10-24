# isIso_H_map_twoδ₁Toδ₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c75ee9-1cc4-f377-f364-359a9d72f699",
  "kind": "lemma",
  "lexical_name": "isIso_H_map_twoδ₁Toδ₀",
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
  "slug": "isiso-h-map-two-to--7055dff6787b1b4162badf4b",
  "source": {
    "blob": "e9459e2bb46102c1190587bc78c7940b486c5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7055dff6787b1b4162badf4bf300d4321c0ac6f01f954d5eaf4916eac6f83469",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c75ee9-1cc4-f377-f364-359a9d72f699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_H_map_twoδ₁Toδ₀ : IsIso ((X.H n₀).map (twoδ₁Toδ₀ f g fg hfg)) := by
  have := X.mono_H_map_twoδ₁Toδ₀ n₀ f g fg hfg h₁
  have := X.epi_H_map_twoδ₁Toδ₀ n₀ n₁ hn₁ f g fg hfg h₂
  apply isIso_of_mono_of_epi

end

section

variable {ι' : Type*} [Preorder ι'] (X' : SpectralObject C ι')
  (n₀ n₁ : ℤ) (hn₁ : n₀ + 1 = n₁) (i₀ i₁ i₂ : ι') (h₀₁ : i₀ ≤ i₁) (h₁₂ : i₁ ≤ i₂)
  (h₁ : IsZero ((X'.H n₀).obj (mk₁ (homOfLE h₀₁))))
  (h₂ : IsZero ((X'.H n₁).obj (mk₁ (homOfLE h₀₁))))

include h₁ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant33bd75d3a9dde4150023d242486df51559f5e37a9dc4732db3e91bd00635c87c.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9459e2bb46102c1190587bc78c7940b486c5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
