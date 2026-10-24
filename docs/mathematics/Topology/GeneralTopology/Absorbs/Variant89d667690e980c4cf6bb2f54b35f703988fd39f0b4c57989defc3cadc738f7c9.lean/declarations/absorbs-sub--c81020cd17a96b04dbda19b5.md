# Absorbs.sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c95380dcd360cc2b4b2d39b15c287ead9c888db4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5b9afa7-004c-4bd5-0812-dba425949904",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00369b00-8dab-ee63-828b-9b55796eb6ac",
  "kind": "lemma",
  "lexical_name": "Absorbs.sub",
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
  "slug": "absorbs-sub--c81020cd17a96b04dbda19b5",
  "source": {
    "blob": "c95380dcd360cc2b4b2d39b15c287ead9c888db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c81020cd17a96b04dbda19b563339700b7788b8a660c6b623a64ee637b28d79f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00369b00-8dab-ee63-828b-9b55796eb6ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Absorbs.sub {s₁ s₂ t₁ t₂ : Set E} (h₁ : Absorbs M s₁ t₁) (h₂ : Absorbs M s₂ t₂) :
    Absorbs M (s₁ - s₂) (t₁ - t₂) := by
  simpa only [sub_eq_add_neg] using h₁.add h₂.neg_neg

end AddGroup

namespace Absorbent

section SMul

variable {M α : Type*} [Bornology M] [SMul M α] {s t : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant89d667690e980c4cf6bb2f54b35f703988fd39f0b4c57989defc3cadc738f7c9.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95380dcd360cc2b4b2d39b15c287ead9c888db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
