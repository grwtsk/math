# filter_subset_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91a06e3060103e858fdd34a61021255b49605c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3fe931b-e730-9d26-7149-874347b5f5d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed2503d5-a284-76b3-30cd-d2d7e0db68a5",
  "kind": "theorem",
  "lexical_name": "filter_subset_filter",
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
  "slug": "filter-subset-filter--a76a44508e1fe0161fe440c3",
  "source": {
    "blob": "91a06e3060103e858fdd34a61021255b49605c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76a44508e1fe0161fe440c3814e084350e8353973c7e03092042cf052b55b51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2503d5-a284-76b3-30cd-d2d7e0db68a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_subset_filter {s t : Finset α} (h : s ⊆ t) : s.filter p ⊆ t.filter p := fun _a ha =>
  mem_filter.2 ⟨h (mem_filter.1 ha).1, (mem_filter.1 ha).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a06e3060103e858fdd34a61021255b49605c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
