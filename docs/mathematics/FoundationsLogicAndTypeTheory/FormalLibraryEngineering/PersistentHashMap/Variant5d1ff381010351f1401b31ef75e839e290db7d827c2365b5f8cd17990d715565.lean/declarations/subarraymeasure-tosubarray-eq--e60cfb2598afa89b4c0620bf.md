# subarrayMeasure_toSubarray_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ad4031-34f8-6174-d6f4-cffea01fb3b5",
  "kind": "theorem",
  "lexical_name": "subarrayMeasure_toSubarray_eq",
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
  "slug": "subarraymeasure-tosubarray-eq--e60cfb2598afa89b4c0620bf",
  "source": {
    "blob": "ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e60cfb2598afa89b4c0620bf176434ae948eb83729bcf1941c51e0a4ae059d2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ad4031-34f8-6174-d6f4-cffea01fb3b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem subarrayMeasure_toSubarray_eq (nes : Array (Entry α β (Node α β))) :
    subarrayMeasure nes.toSubarray = Node.measure (.entries nes) := by
  simp only [subarrayMeasure, Node.measure]
  have h1 : nes.toSubarray.toList = nes.toList := by
    rw [Subarray.toList_eq_drop_take]
    simp only [Array.size_eq_length_toList, Array.start_toSubarray, le_refl, Nat.min_eq_left,
      Nat.zero_le, Array.stop_toSubarray, Array.array_toSubarray, List.take_length, List.drop_zero]
  have h2 := measureEntries_eq_list_sum nes 0
  simp only [List.drop_zero] at h2
  rw [h1]
  exact h2.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
