# Filter.Tendsto.congr_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4803044389f5136573298eaa12eb83549e23e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d6b7dda-6dee-ba54-f783-86244a044ae6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da83f5ec-7314-7a74-1fdf-7907e7531b7d",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.congr_germ",
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
  "slug": "filter-tendsto-congr-germ--6f11a99c9206d44fb973ae3d",
  "source": {
    "blob": "c4803044389f5136573298eaa12eb83549e23e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f11a99c9206d44fb973ae3d42171c7872da9cec8e8bc5b153dec2bf14d88164",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da83f5ec-7314-7a74-1fdf-7907e7531b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.congr_germ {f g : β → γ} {l : Filter α} {l' : Filter β} (h : f =ᶠ[l'] g)
    {φ : α → β} (hφ : Tendsto φ l l') : (f ∘ φ : Germ l γ) = g ∘ φ :=
  EventuallyEq.germ_eq (h.comp_tendsto hφ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta46c8da7ee8bd281e88526486e6ea65f158e07abe1f39108bc7b3f4061cbab3c.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4803044389f5136573298eaa12eb83549e23e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
