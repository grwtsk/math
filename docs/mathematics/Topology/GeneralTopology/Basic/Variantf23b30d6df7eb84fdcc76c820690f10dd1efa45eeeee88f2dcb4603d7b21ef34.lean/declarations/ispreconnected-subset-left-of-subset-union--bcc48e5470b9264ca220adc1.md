# IsPreconnected.subset_left_of_subset_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "951fa5e48c91bf23b9f272cd1d0e38dfa66a1a62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc93e7e6-5b8d-14dc-c223-cd9320388147",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faa723f3-da8b-4017-8e08-b9ac49b7d21f",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.subset_left_of_subset_union",
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
  "slug": "ispreconnected-subset-left-of-subset-union--bcc48e5470b9264ca220adc1",
  "source": {
    "blob": "951fa5e48c91bf23b9f272cd1d0e38dfa66a1a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 383,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcc48e5470b9264ca220adc1b5d4a29fdb1f4076cd481ae24de6e15eca35cf61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa723f3-da8b-4017-8e08-b9ac49b7d21f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.subset_left_of_subset_union (hu : IsOpen u) (hv : IsOpen v)
    (huv : Disjoint u v) (hsuv : s ⊆ u ∪ v) (hsu : (s ∩ u).Nonempty) (hs : IsPreconnected s) :
    s ⊆ u :=
  Disjoint.subset_left_of_subset_union hsuv
    (by
      by_contra hsv
      rw [not_disjoint_iff_nonempty_inter] at hsv
      obtain ⟨x, _, hx⟩ := hs u v hu hv hsuv hsu hsv
      exact Set.disjoint_iff.1 huv hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf23b30d6df7eb84fdcc76c820690f10dd1efa45eeeee88f2dcb4603d7b21ef34.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951fa5e48c91bf23b9f272cd1d0e38dfa66a1a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
