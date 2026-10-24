# map_lowerCentralSeries_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "574d02dcb2ea1036822381562c39880b364d5649",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13c87a39-53fd-2df5-ad47-ce0775e4ff99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea2d5e3-bb1c-1803-b21d-fa3259f2252b",
  "kind": "lemma",
  "lexical_name": "map_lowerCentralSeries_eq",
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
  "slug": "map-lowercentralseries-eq--76a63b07e301c08606f41e00",
  "source": {
    "blob": "574d02dcb2ea1036822381562c39880b364d5649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 235,
    "path": "GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a63b07e301c08606f41e006f11d5b54867a1ca9a72189faf1484383c9468d4",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea2d5e3-bb1c-1803-b21d-fa3259f2252b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_lowerCentralSeries_eq {f : M →ₗ⁅R,L⁆ M₂} (hf : Function.Surjective f) :
    (lowerCentralSeries R L M k).map f = lowerCentralSeries R L M₂ k := by
  apply le_antisymm (map_lowerCentralSeries_le k f)
  induction k with
  | zero =>
    rwa [lowerCentralSeries_zero, lowerCentralSeries_zero, top_le_iff, f.map_top,
      f.range_eq_top]
  | succ =>
    simp only [lowerCentralSeries_succ, LieSubmodule.map_bracket_eq]
    apply LieSubmodule.mono_lie_right
    assumption

end

open LieAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `574d02dcb2ea1036822381562c39880b364d5649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
