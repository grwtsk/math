# get?_ofList_of_contains_eq_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b861a2e-1a54-30ce-56ee-6dd2abc21585",
  "kind": "theorem",
  "lexical_name": "get?_ofList_of_contains_eq_false",
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
  "slug": "get-oflist-of-contains-eq-false--89eca4241e5e8b00d44feb9c",
  "source": {
    "blob": "42762cd887056c5978da14ea066bf768d3081fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 619,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantf61918ce70a9f919937953a43aa85ae2d303bdb3a1be8ac5616072d0637b6a51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89eca4241e5e8b00d44feb9c6feb0a61cd71d7b4ee7c48739444014298332079",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantf61918ce70a9f919937953a43aa85ae2d303bdb3a1be8ac5616072d0637b6a51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b861a2e-1a54-30ce-56ee-6dd2abc21585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get?_ofList_of_contains_eq_false [EquivBEq α] [LawfulHashable α]
    {l : List α} {k : α} (contains_eq_false : l.contains k = false) :
    get? (ofList l) k = none :=
  ExtHashMap.getKey?_unitOfList_of_contains_eq_false contains_eq_false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantf61918ce70a9f919937953a43aa85ae2d303bdb3a1be8ac5616072d0637b6a51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantf61918ce70a9f919937953a43aa85ae2d303bdb3a1be8ac5616072d0637b6a51.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42762cd887056c5978da14ea066bf768d3081fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
