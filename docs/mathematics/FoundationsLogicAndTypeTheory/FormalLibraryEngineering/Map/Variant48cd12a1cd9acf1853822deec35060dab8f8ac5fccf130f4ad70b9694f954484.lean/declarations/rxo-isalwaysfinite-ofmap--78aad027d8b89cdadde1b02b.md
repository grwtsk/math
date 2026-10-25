# Rxo.IsAlwaysFinite.ofMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "022c5b29a454a9cf592056d3d68e6f35722f5a88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf8899b4-4e8d-9fd9-563f-10ac59605216",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1effd8f9-4d1a-8e7a-2d72-16de908f939f",
  "kind": "theorem",
  "lexical_name": "Rxo.IsAlwaysFinite.ofMap",
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
  "slug": "rxo-isalwaysfinite-ofmap--78aad027d8b89cdadde1b02b",
  "source": {
    "blob": "022c5b29a454a9cf592056d3d68e6f35722f5a88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78aad027d8b89cdadde1b02b59bf64e31d73dc73d43499a9af3a9ab77be86925",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1effd8f9-4d1a-8e7a-2d72-16de908f939f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rxo.IsAlwaysFinite.ofMap [LT α] [LT β] [Rxo.IsAlwaysFinite β] (f : Map α β)
    [f.PreservesLT] : Rxo.IsAlwaysFinite α where
  finite init hi := by
    obtain ⟨n, hn⟩ := Rxo.IsAlwaysFinite.finite (f.toFun init) (f.toFun hi)
    exact ⟨n, by simpa [f.succMany?_toFun, Map.PreservesLT.lt_iff (f := f)] using! hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant48cd12a1cd9acf1853822deec35060dab8f8ac5fccf130f4ad70b9694f954484.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `022c5b29a454a9cf592056d3d68e6f35722f5a88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
