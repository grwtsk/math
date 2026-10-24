# insertNth_mem_piFinset_insertNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5d8f95a-2a48-074a-0693-ac074d5a02e5",
  "kind": "lemma",
  "lexical_name": "insertNth_mem_piFinset_insertNth",
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
  "slug": "insertnth-mem-pifinset-insertnth--4a4f524b0548485a080e3db6",
  "source": {
    "blob": "0bd0a3b0b9d1ef11e9f2b32f3c3c5d01c5fc8547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4f524b0548485a080e3db60af8c8ae4a85cf0c4f6d66ab6893523a0c91ad47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5d8f95a-2a48-074a-0693-ac074d5a02e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma insertNth_mem_piFinset_insertNth {x_pivot : α p} {x_remove : ∀ i, α (succAbove p i)}
    {s_pivot : Finset (α p)} {s_remove : ∀ i, Finset (α (succAbove p i))} :
    insertNth p x_pivot x_remove ∈ piFinset (insertNth p s_pivot s_remove) ↔
      x_pivot ∈ s_pivot ∧ x_remove ∈ piFinset s_remove := by
  simp [mem_piFinset_iff_pivot_removeNth p]

end Fin

namespace Finset
variable {n : ℕ} {α : Fin (n + 1) → Type*} {p : Fin (n + 1)} (S : ∀ i, Finset (α i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finset/Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd0a3b0b9d1ef11e9f2b32f3c3c5d01c5fc8547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
