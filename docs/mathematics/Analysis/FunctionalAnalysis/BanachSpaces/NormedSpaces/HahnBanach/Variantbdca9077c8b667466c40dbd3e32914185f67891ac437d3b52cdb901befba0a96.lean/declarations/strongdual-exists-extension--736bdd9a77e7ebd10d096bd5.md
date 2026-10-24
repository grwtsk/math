# StrongDual.exists_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef4fb60f9e0361bd2c518b2c65f8996819ad14e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb2dc7e1-13a9-6cbd-5e2b-73a40f301024",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f069c3e-35f5-10bd-2058-577f4acc950f",
  "kind": "theorem",
  "lexical_name": "StrongDual.exists_extension",
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
  "slug": "strongdual-exists-extension--736bdd9a77e7ebd10d096bd5",
  "source": {
    "blob": "ef4fb60f9e0361bd2c518b2c65f8996819ad14e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 91,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736bdd9a77e7ebd10d096bd53503912b5318ece656f10a842492805e66254534",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f069c3e-35f5-10bd-2058-577f4acc950f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrongDual.exists_extension {𝕜} [NontriviallyNormedField 𝕜] [IsRCLikeNormedField 𝕜]
    [Module 𝕜 E] [PolynormableSpace 𝕜 E] (S : Submodule 𝕜 E) (f : StrongDual 𝕜 S) :
    ∃ g : StrongDual 𝕜 E, ∀ x : S, g x = f x := by
  obtain ⟨q, hq_cont, hq⟩ := Seminorm.exists_le_comp_of_isInducing (f := S.subtype)
    (p := f.toSeminorm) f.continuous.norm IsInducing.subtypeVal
  obtain ⟨g, hg, _⟩ := Dual.exists_continuous_extension_of_le_seminorm S f.toLinearMap hq_cont hq
  exact ⟨g, hg⟩

variable {F : Type*} [AddCommGroup F] [TopologicalSpace F] [IsTopologicalAddGroup F] [Module 𝕜 F]
  [ContinuousSMul 𝕜 F] [T2Space F]

set_option backward.isDefEq.respectTransparency.types false in
/-- Corollary of the polynormable **Hahn-Banach theorem**: if `f : S → F` is a continuous
linear map with finite-dimensional range, then `f` extends to a continuous linear map on the whole
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef4fb60f9e0361bd2c518b2c65f8996819ad14e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
