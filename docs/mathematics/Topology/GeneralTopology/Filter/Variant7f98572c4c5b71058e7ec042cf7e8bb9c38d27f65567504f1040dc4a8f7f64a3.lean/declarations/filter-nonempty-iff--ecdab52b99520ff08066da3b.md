# filter_nonempty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42c809eeac98c1bcd787b78ed8afed43c8b61325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa37366b-dccc-d85c-00cc-da021a4fc824",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2047e12-3f51-4031-643e-31ba05ff4a4e",
  "kind": "theorem",
  "lexical_name": "filter_nonempty_iff",
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
  "slug": "filter-nonempty-iff--ecdab52b99520ff08066da3b",
  "source": {
    "blob": "42c809eeac98c1bcd787b78ed8afed43c8b61325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecdab52b99520ff08066da3b417ee5b22d6f85d0e43903ab6f88360514d00051",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2047e12-3f51-4031-643e-31ba05ff4a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_nonempty_iff : (s.filter p).Nonempty ↔ ∃ a ∈ s, p a := by
  simp only [nonempty_iff_ne_empty, Ne, filter_eq_empty_iff, Classical.not_not, not_forall,
    exists_prop]

/-- If all elements of a `Finset` satisfy the predicate `p`, `s.filter p` is `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c809eeac98c1bcd787b78ed8afed43c8b61325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
