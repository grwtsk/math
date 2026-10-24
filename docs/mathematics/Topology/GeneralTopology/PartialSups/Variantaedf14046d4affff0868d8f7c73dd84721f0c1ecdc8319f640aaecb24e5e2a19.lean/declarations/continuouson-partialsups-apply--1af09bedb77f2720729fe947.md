# ContinuousOn.partialSups_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e668aa57d334be6968ccd4003c19163c681bfd38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aedf14046d4affff0868d8f7c73dd84721f0c1ecdc8319f640aaecb24e5e2a19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ee63abc-7f7f-4028-2a0b-05b6335183d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0695251a-8fcf-ea1b-bcb5-89d5297e9b43",
  "kind": "lemma",
  "lexical_name": "ContinuousOn.partialSups_apply",
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
  "slug": "continuouson-partialsups-apply--1af09bedb77f2720729fe947",
  "source": {
    "blob": "e668aa57d334be6968ccd4003c19163c681bfd38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/PartialSups/Variantaedf14046d4affff0868d8f7c73dd84721f0c1ecdc8319f640aaecb24e5e2a19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af09bedb77f2720729fe9470f075bec4968a215cfa2ae5e51edbe3da7476906",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialSups/Variantaedf14046d4affff0868d8f7c73dd84721f0c1ecdc8319f640aaecb24e5e2a19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0695251a-8fcf-ea1b-bcb5-89d5297e9b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma ContinuousOn.partialSups_apply (hf : ∀ k ≤ n, ContinuousOn (f k) s) :
    ContinuousOn (fun a ↦ partialSups (f · a) n) s := fun x hx ↦
  ContinuousWithinAt.partialSups_apply fun k hk ↦ hf k hk x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialSups/Variantaedf14046d4affff0868d8f7c73dd84721f0c1ecdc8319f640aaecb24e5e2a19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialSups/Variantaedf14046d4affff0868d8f7c73dd84721f0c1ecdc8319f640aaecb24e5e2a19.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e668aa57d334be6968ccd4003c19163c681bfd38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
