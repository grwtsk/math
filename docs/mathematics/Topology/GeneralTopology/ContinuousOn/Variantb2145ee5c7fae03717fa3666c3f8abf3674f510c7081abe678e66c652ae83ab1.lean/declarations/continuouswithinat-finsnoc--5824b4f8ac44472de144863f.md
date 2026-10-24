# ContinuousWithinAt.finSnoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "873802fa283da8722f1cb0d4ac5e2e73cda916f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 779,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29995fdc-6bca-f640-fe21-3755203c45d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7af01313-da5c-8a25-4100-efa415cc6ebb",
  "kind": "theorem",
  "lexical_name": "ContinuousWithinAt.finSnoc",
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
  "slug": "continuouswithinat-finsnoc--5824b4f8ac44472de144863f",
  "source": {
    "blob": "873802fa283da8722f1cb0d4ac5e2e73cda916f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 779,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5824b4f8ac44472de144863f023aea8b3813533200b12856bc0d55f83e5aceee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af01313-da5c-8a25-4100-efa415cc6ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousWithinAt.finSnoc
    {f : α → ∀ j : Fin n, X (Fin.castSucc j)} {g : α → X (Fin.last _)} {a : α} {s : Set α}
    (hf : ContinuousWithinAt f s a) (hg : ContinuousWithinAt g s a) :
    ContinuousWithinAt (fun a => Fin.snoc (f a) (g a)) s a :=
  hf.tendsto.finSnoc hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variantb2145ee5c7fae03717fa3666c3f8abf3674f510c7081abe678e66c652ae83ab1.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `873802fa283da8722f1cb0d4ac5e2e73cda916f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
