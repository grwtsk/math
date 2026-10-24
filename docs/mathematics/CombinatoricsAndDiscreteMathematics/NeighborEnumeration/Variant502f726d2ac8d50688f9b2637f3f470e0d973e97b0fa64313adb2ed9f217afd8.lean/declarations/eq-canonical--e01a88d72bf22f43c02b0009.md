# eq_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c6b063-78e6-b99a-ddd2-a4784b24b6be",
  "kind": "theorem",
  "lexical_name": "eq_canonical",
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
  "slug": "eq-canonical--e01a88d72bf22f43c02b0009",
  "source": {
    "blob": "1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e01a88d72bf22f43c02b0009221688f6e04ebc74c617daed8f0ea1b8b7d04e63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c6b063-78e6-b99a-ddd2-a4784b24b6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_canonical
    {G : GraphCut}
    {scope : RelationScope G}
    {profile : AdmissibilityProfile G}
    (enumeration :
      NeighborEnumeration G scope profile)
    (node : G.Node) :
    enumeration.neighbors node =
      canonicalNeighborList scope profile node := by
  exact
    (enumeration.sorted node).eq_of_mem_iff
      (canonicalNeighborList_sorted scope profile node)
      (fun arc => by
        rw [enumeration.mem_iff,
          mem_canonicalNeighborList])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
