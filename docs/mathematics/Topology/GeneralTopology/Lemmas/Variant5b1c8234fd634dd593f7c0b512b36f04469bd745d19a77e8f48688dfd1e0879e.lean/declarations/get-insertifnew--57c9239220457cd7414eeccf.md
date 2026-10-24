# get?_insertIfNew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c1d3a73-e106-71ac-52d6-07ba81f25ca8",
  "kind": "theorem",
  "lexical_name": "get?_insertIfNew",
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
  "slug": "get-insertifnew--57c9239220457cd7414eeccf",
  "source": {
    "blob": "5f3141dd74eb4a3fa7c6da533a7ea2a3ea9608ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 882,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5b1c8234fd634dd593f7c0b512b36f04469bd745d19a77e8f48688dfd1e0879e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57c9239220457cd7414eeccf1bec3167e91dc8c68fb7a260f9dd3bf8a80675f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant5b1c8234fd634dd593f7c0b512b36f04469bd745d19a77e8f48688dfd1e0879e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c1d3a73-e106-71ac-52d6-07ba81f25ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem get?_insertIfNew [LawfulBEq α] {k a : α} {v : β k} : (m.insertIfNew k v).get? a =
    if h : k == a ∧ ¬k ∈ m then some (cast (congrArg β (eq_of_beq h.1)) v) else m.get? a :=
  m.inductionOn fun _ => DHashMap.get?_insertIfNew

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant5b1c8234fd634dd593f7c0b512b36f04469bd745d19a77e8f48688dfd1e0879e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant5b1c8234fd634dd593f7c0b512b36f04469bd745d19a77e8f48688dfd1e0879e.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3141dd74eb4a3fa7c6da533a7ea2a3ea9608ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
