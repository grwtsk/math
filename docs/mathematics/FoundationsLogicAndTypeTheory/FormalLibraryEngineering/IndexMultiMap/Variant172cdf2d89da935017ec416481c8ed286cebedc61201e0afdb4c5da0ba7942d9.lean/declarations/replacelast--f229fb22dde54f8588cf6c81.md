# replaceLast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:025e12da0e8588021d71545441a27c559d16e4fa269e9d65dfe1e909baeecc45",
  "kind": "def",
  "lexical_name": "replaceLast",
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
  "slug": "replacelast--f229fb22dde54f8588cf6c81",
  "source": {
    "blob": "efb67d6a07a60304082975fb9bda7edf847f4441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variant172cdf2d89da935017ec416481c8ed286cebedc61201e0afdb4c5da0ba7942d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f229fb22dde54f8588cf6c81ba9f16464deff46b5afc8620ef75aa783e8b07c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variant172cdf2d89da935017ec416481c8ed286cebedc61201e0afdb4c5da0ba7942d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:025e12da0e8588021d71545441a27c559d16e4fa269e9d65dfe1e909baeecc45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceLast (map : IndexMultiMap α β) (key : α) (value : β) : IndexMultiMap α β :=
  if h : key ∈ map then
    let idxs := map.indexes.get key h
    let ⟨nonEmpty, isIn⟩ := map.validity key h
    let lastPos : Fin idxs.size := ⟨idxs.size - 1, Nat.sub_lt nonEmpty (by omega)⟩
    let lastIdx : Nat := idxs[lastPos]
    have lastIdxValid : lastIdx < map.entries.size := isIn lastIdx (Array.getElem_mem lastPos.isLt)
    let entries := map.entries.set (Fin.mk lastIdx lastIdxValid) (key, value)
    { map with entries, validity := ?_ }
  else
    map
where finally
  have _ := map.validity
  grind

/--
Removes a key and all its values from the map. This function rebuilds the entire
`entries` array and `indexes` map from scratch by filtering out all pairs whose
key matches, then re-inserting the survivors.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variant172cdf2d89da935017ec416481c8ed286cebedc61201e0afdb4c5da0ba7942d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexMultiMap/Variant172cdf2d89da935017ec416481c8ed286cebedc61201e0afdb4c5da0ba7942d9.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb67d6a07a60304082975fb9bda7edf847f4441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
