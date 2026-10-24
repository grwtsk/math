# get_modify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29f43f1c-0d63-289d-84e5-f44fa032d721",
  "kind": "theorem",
  "lexical_name": "get_modify",
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
  "slug": "get-modify--4f8ce3e9181756ca831e9fe4",
  "source": {
    "blob": "1dcdcd09016e074ec7abcabb25fac49b93348b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3678,
    "line": 3667,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8ce3e9181756ca831e9fe44142e29c397ac9555652e1b951532f0975c2c203",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29f43f1c-0d63-289d-84e5-f44fa032d721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3667–3678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_modify [EquivBEq α] [LawfulHashable α] {k k' : α} {f : β → β}
    {h : k' ∈ Const.modify m k f} :
    Const.get (Const.modify m k f) k' h =
      if heq : k == k' then
        haveI h' : k ∈ m := mem_congr heq |>.mpr <| mem_modify.mp h
        f (Const.get m k h')
      else
        haveI h' : k' ∈ m := mem_modify.mp h
        Const.get m k' h' :=
  m.inductionOn (fun _ _ => DHashMap.Const.get_modify) h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean#L3667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dcdcd09016e074ec7abcabb25fac49b93348b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
