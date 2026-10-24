# mapPiLocalization_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f2b789877c0a1cea5b60d95236acd848a3c1188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bb17306-f3a9-01e0-d332-bab1002dbdc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae42f498-c028-b2c8-39b1-bf3868e6d506",
  "kind": "theorem",
  "lexical_name": "mapPiLocalization_bijective",
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
  "slug": "mappilocalization-bijective--018e9efef203dc7638fe8080",
  "source": {
    "blob": "5f2b789877c0a1cea5b60d95236acd848a3c1188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 238,
    "path": "GRWTSK/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:018e9efef203dc7638fe80802af2ab972d77e4d8d5d2c018c12011685c27062d",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae42f498-c028-b2c8-39b1-bf3868e6d506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapPiLocalization_bijective (hf : Function.Bijective f) :
    Function.Bijective (mapPiLocalization f) := by
  let f := RingEquiv.ofBijective f hf
  let e := RingEquiv.ofRingHom (mapPiLocalization (f : R →+* S)) (mapPiLocalization f.symm) ?_ ?_
  · exact e.bijective
  · rw [← mapPiLocalization_comp, RingEquiv.comp_symm, mapPiLocalization_id]
  · rw [← mapPiLocalization_comp, RingEquiv.symm_comp, mapPiLocalization_id]

section Pi

variable {ι} (R : ι → Type*) [∀ i, CommSemiring (R i)] [∀ i, Nontrivial (R i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant512e81b991c70117c38cc32d96f82fde001486339a10c8eec4f1ffad793ef58c.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2b789877c0a1cea5b60d95236acd848a3c1188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
