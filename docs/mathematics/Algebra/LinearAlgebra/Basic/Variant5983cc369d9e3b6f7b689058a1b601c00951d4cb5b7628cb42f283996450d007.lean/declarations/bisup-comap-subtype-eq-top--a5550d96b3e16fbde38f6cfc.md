# biSup_comap_subtype_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79b7ad3f-0390-120b-774c-089818ba2c20",
  "kind": "lemma",
  "lexical_name": "biSup_comap_subtype_eq_top",
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
  "slug": "bisup-comap-subtype-eq-top--a5550d96b3e16fbde38f6cfc",
  "source": {
    "blob": "5bc94086e7e6e6f4bd7f58e9e061153b953d6896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 455,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5550d96b3e16fbde38f6cfcc3a9d71b1a7bff7b30f50523ccfe7d14c5c2b7c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79b7ad3f-0390-120b-774c-089818ba2c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biSup_comap_subtype_eq_top {ι : Type*} (s : Set ι) (p : ι → Submodule R M) :
    ⨆ i ∈ s, (p i).comap (⨆ i ∈ s, p i).subtype = ⊤ := by
  refine eq_top_iff.mpr fun ⟨x, hx⟩ _ ↦ ?_
  suffices x ∈ (⨆ i ∈ s, (p i).comap (⨆ i ∈ s, p i).subtype).map (⨆ i ∈ s, (p i)).subtype by
    obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.mp this
    exact hy
  suffices ∀ i ∈ s, (comap (⨆ i ∈ s, p i).subtype (p i)).map (⨆ i ∈ s, p i).subtype = p i by
    simpa only [map_iSup, biSup_congr this]
  intro i hi
  rw [map_comap_eq, range_subtype, inf_eq_right]
  exact le_biSup p hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5983cc369d9e3b6f7b689058a1b601c00951d4cb5b7628cb42f283996450d007.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc94086e7e6e6f4bd7f58e9e061153b953d6896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
