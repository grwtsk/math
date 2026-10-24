# canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4b940309b10206a843ad166682e00d23ff5f741155ee62bc571ea33bc956d30",
  "kind": "def",
  "lexical_name": "canonical",
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
  "slug": "canonical--bccca7383428c6130a4386df",
  "source": {
    "blob": "1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bccca7383428c6130a4386dfa496f01b99360dc74cf221b63c6f349a0f3c85cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4b940309b10206a843ad166682e00d23ff5f741155ee62bc571ea33bc956d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonical
    (G : GraphCut)
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (digest : ProfileDigest) :
    NeighborEnumeration G scope profile where
  neighbors :=
    canonicalNeighborList scope profile
  nodup :=
    canonicalNeighborList_nodup scope profile
  sorted :=
    canonicalNeighborList_sorted scope profile
  sound := by
    intro node arc member
    exact
      (mem_canonicalNeighborList
        scope profile node arc).mp member
  complete := by
    intro node arc eligible
    exact
      (mem_canonicalNeighborList
        scope profile node arc).mpr eligible
  digest := digest

end NeighborEnumeration

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
