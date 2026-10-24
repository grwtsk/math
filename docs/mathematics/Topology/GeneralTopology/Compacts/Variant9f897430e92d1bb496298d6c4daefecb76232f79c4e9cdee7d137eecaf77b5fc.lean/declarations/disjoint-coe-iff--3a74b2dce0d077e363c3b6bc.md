# disjoint_coe_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "76e5a262cb3b16845ecc95c68b8955b4cd24526d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:465019d0-13b6-b91e-2299-7ca83d2f0a6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a7e0a12-680f-e516-20f6-350d879369af",
  "kind": "theorem",
  "lexical_name": "disjoint_coe_iff",
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
  "slug": "disjoint-coe-iff--3a74b2dce0d077e363c3b6bc",
  "source": {
    "blob": "76e5a262cb3b16845ecc95c68b8955b4cd24526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a74b2dce0d077e363c3b6bcf5ff74204b535976fafbc052b7d7b3aaedcba1b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a7e0a12-680f-e516-20f6-350d879369af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_coe_iff (K L : Compacts α) : Disjoint (K : Set α) L ↔ Disjoint K L where
  mp h := .of_orderEmbedding (.ofMapLEIff SetLike.coe (fun _ _ => SetLike.coe_subset_coe)) h
  mpr h := by
    rw [Set.disjoint_iff]
    intro x ⟨hxK, hxL⟩
    specialize @h {x}
    simp_rw [← SetLike.coe_subset_coe, coe_singleton, singleton_subset_iff] at h
    exact h hxK hxL

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variant9f897430e92d1bb496298d6c4daefecb76232f79c4e9cdee7d137eecaf77b5fc.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e5a262cb3b16845ecc95c68b8955b4cd24526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
