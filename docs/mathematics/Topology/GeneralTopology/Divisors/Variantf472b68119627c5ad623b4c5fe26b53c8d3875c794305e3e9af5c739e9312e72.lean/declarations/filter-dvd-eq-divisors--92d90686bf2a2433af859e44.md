# filter_dvd_eq_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc300ef2c3d63647aa6bcf79e284c48c46f1121a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f472b68119627c5ad623b4c5fe26b53c8d3875c794305e3e9af5c739e9312e72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5c8d6a0-b7f8-0870-993a-badd1029550f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5740f7a7-1026-f27a-f959-2da51ce40eb6",
  "kind": "theorem",
  "lexical_name": "filter_dvd_eq_divisors",
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
  "slug": "filter-dvd-eq-divisors--92d90686bf2a2433af859e44",
  "source": {
    "blob": "fc300ef2c3d63647aa6bcf79e284c48c46f1121a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variantf472b68119627c5ad623b4c5fe26b53c8d3875c794305e3e9af5c739e9312e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92d90686bf2a2433af859e440d8fefedd6e5d2ed52310b329b10703f016eac50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variantf472b68119627c5ad623b4c5fe26b53c8d3875c794305e3e9af5c739e9312e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5740f7a7-1026-f27a-f959-2da51ce40eb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_dvd_eq_divisors (h : n ≠ 0) : (Finset.range n.succ).filter (· ∣ n) = n.divisors := by
  ext
  simp only [divisors, mem_filter, mem_range, mem_Ico, and_congr_left_iff, iff_and_self]
  exact fun ha _ => succ_le_iff.mpr (pos_of_dvd_of_pos ha h.bot_lt)
#align nat.filter_dvd_eq_divisors Nat.filter_dvd_eq_divisors

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variantf472b68119627c5ad623b4c5fe26b53c8d3875c794305e3e9af5c739e9312e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variantf472b68119627c5ad623b4c5fe26b53c8d3875c794305e3e9af5c739e9312e72.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc300ef2c3d63647aa6bcf79e284c48c46f1121a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
