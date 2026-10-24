# trans_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f986700-69ad-3c61-a3a6-91d076b4dcba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fe0e3e3-800f-7102-caf2-3f91a3b28691",
  "kind": "theorem",
  "lexical_name": "trans_assoc",
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
  "slug": "trans-assoc--4afac2e2c369f67b61d3d4d5",
  "source": {
    "blob": "8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afac2e2c369f67b61d3d4d5c887317b7a9345500d5b0033794c1d4b6aa240e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fe0e3e3-800f-7102-caf2-3f91a3b28691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_assoc {x₀ x₁ x₂ x₃ : X} (p : Path x₀ x₁) (q : Path x₁ x₂) (r : Path x₂ x₃) :
    ((p.trans q).trans r).Homotopic (p.trans (q.trans r)) :=
  ⟨Homotopy.transAssoc p q r⟩

namespace Quotient

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
