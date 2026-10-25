# measureEntries_eq_list_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c479c053-4ca2-d2b5-f4ce-3bdb1aa2d84f",
  "kind": "theorem",
  "lexical_name": "measureEntries_eq_list_sum",
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
  "slug": "measureentries-eq-list-sum--0d1362ecb34731e03e697840",
  "source": {
    "blob": "ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d1362ecb34731e03e697840d79eaef29d040251d64a1d45a650314a92fa27b8",
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

Occurrence: `result:c479c053-4ca2-d2b5-f4ce-3bdb1aa2d84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem measureEntries_eq_list_sum (es : Array (Entry α β (Node α β))) (i : Nat) :
    Node.measure.measureEntries es i =
      ((es.toList.drop i).map Entry.measure).sum := by
  unfold Node.measure.measureEntries
  split
  · rename_i h
    rw [List.drop_eq_getElem_cons (by simpa using! h)]
    simp only [List.map_cons, List.sum_cons]
    rw [measureEntries_eq_list_sum es (i + 1)]
    congr 1
    simp only [Array.getElem_toList]
    cases es[i] <;> simp [Entry.measure]
  · rename_i h
    rw [List.drop_eq_nil_of_le (by simpa using! h)]
    simp
  termination_by es.size - i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
