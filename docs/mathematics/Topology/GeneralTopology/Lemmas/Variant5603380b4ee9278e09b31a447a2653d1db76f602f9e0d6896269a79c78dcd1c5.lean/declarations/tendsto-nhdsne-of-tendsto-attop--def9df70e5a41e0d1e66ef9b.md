# tendsto_nhdsNE_of_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7a59d0427ebce7447368cbc771063f975ea2f62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ad5387e-7b74-6fc7-4357-e7c82aa92fdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b74058e-f334-7ddb-213f-bac79833eb78",
  "kind": "theorem",
  "lexical_name": "tendsto_nhdsNE_of_tendsto_atTop",
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
  "slug": "tendsto-nhdsne-of-tendsto-attop--def9df70e5a41e0d1e66ef9b",
  "source": {
    "blob": "b7a59d0427ebce7447368cbc771063f975ea2f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def9df70e5a41e0d1e66ef9b4d2b5e8e532a7c4d76abd430e049e5719fc84cb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b74058e-f334-7ddb-213f-bac79833eb78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhdsNE_of_tendsto_atTop (h_neg : Tendsto (fun x ↦ f (c - x⁻¹)) atTop l)
    (h_pos : Tendsto (fun x ↦ f (c + x⁻¹)) atTop l) :
    Tendsto f (𝓝[≠] c) l := by
  simpa [Tendsto, ← nhdsLT_sup_nhdsGT] using
    ⟨tendsto_nhdsLT_of_tendsto_atTop _ _ h_neg, tendsto_nhdsGT_of_tendsto_atTop _ _ h_pos⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a59d0427ebce7447368cbc771063f975ea2f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
