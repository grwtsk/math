# getKey_insertManyIfNewUnit_list_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ac618c5-cc7b-511c-e1c4-1d155a6fe7b2",
  "kind": "theorem",
  "lexical_name": "getKey_insertManyIfNewUnit_list_of_mem",
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
  "slug": "getkey-insertmanyifnewunit-list-of-mem--f74fc29e1bc020acc8155960",
  "source": {
    "blob": "82024320020a50c7c2ec39a66d103bdafe4f1006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3167,
    "line": 3163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f74fc29e1bc020acc815596018f79a59a6a591c4058c3fb0981e11723e0a51fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ac618c5-cc7b-511c-e1c4-1d155a6fe7b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3163–3167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey_insertManyIfNewUnit_list_of_mem [EquivBEq α] [LawfulHashable α]
    {l : List α} {k : α} (mem : k ∈ m) {h} :
    getKey (insertManyIfNewUnit m l) k h = getKey m k mem :=
  Raw₀.Const.getKey_insertManyIfNewUnit_list_of_contains ⟨m.1, _⟩ m.2 _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean#L3163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82024320020a50c7c2ec39a66d103bdafe4f1006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
