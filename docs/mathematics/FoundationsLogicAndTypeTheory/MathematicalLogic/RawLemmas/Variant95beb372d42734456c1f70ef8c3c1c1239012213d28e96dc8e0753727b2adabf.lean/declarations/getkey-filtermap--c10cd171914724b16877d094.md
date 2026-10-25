# getKey!_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2210e365-aac1-f64d-0e8e-35b7d7fc02b2",
  "kind": "theorem",
  "lexical_name": "getKey!_filterMap",
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
  "slug": "getkey-filtermap--c10cd171914724b16877d094",
  "source": {
    "blob": "ca323a8bcae93039209fc46858aead059b881e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3425,
    "line": 3418,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10cd171914724b16877d094b14e9155caa6e8a0b06a08d4397d58d3165b8959",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2210e365-aac1-f64d-0e8e-35b7d7fc02b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3418–3425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey!_filterMap [EquivBEq α] [LawfulHashable α] [Inhabited α]
    {f : α → β → Option γ} {k : α} (h : m.WF) :
    (m.filterMap f).getKey! k =
    ((m.getKey? k).pfilter (fun x h' =>
      (f x (m[x]'(mem_of_getKey?_eq_some h h'))).isSome)).get! :=
  DHashMap.Raw.Const.getKey!_filterMap h.out

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variant95beb372d42734456c1f70ef8c3c1c1239012213d28e96dc8e0753727b2adabf.lean#L3418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca323a8bcae93039209fc46858aead059b881e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
