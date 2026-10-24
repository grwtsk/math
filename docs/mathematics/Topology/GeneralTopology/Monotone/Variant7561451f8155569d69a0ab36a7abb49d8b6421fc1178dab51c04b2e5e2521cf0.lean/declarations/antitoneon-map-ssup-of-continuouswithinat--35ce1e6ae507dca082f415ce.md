# AntitoneOn.map_sSup_of_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36310d99-36a8-c7dd-f576-52df24465c7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:668dbfad-b4ab-8c35-fee4-c9812bd05df4",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.map_sSup_of_continuousWithinAt",
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
  "slug": "antitoneon-map-ssup-of-continuouswithinat--35ce1e6ae507dca082f415ce",
  "source": {
    "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ce1e6ae507dca082f415ced18e88128f9ccefc18b68be3dc8b457f732812ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:668dbfad-b4ab-8c35-fee4-c9812bd05df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.map_sSup_of_continuousWithinAt {f : α → β} {s : Set α}
    (Cf : ContinuousWithinAt f s (sSup s)) (Af : AntitoneOn f s) (fbot : f ⊥ = ⊤) :
    f (sSup s) = sInf (f '' s) :=
  MonotoneOn.map_sSup_of_continuousWithinAt
    (show ContinuousWithinAt (OrderDual.toDual ∘ f) s (sSup s) from Cf) Af fbot

/-- An antitone function `f` sending `bot` to `top` and continuous at the supremum of a set sends
this supremum to the infimum of the image of this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
