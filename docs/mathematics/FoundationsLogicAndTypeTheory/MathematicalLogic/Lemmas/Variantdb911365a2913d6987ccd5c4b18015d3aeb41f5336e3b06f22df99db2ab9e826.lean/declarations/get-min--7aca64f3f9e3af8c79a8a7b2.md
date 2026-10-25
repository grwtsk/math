# get!_min?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50deaaff-7909-93b7-23a1-168957557683",
  "kind": "theorem",
  "lexical_name": "get!_min?",
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
  "slug": "get-min--7aca64f3f9e3af8c79a8a7b2",
  "source": {
    "blob": "88473b62fb0212be85f1300ff151ce437fb36282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1443,
    "line": 1440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aca64f3f9e3af8c79a8a7b2d6f5e734fc5b6f1728a8c585394015f3eb0b2114",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50deaaff-7909-93b7-23a1-168957557683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1440–1443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get!_min? [TransCmp cmp] [Inhabited α] (h : t.WF) {km} :
    (hkm : t.min? = some km) → t.get! km = km :=
  TreeMap.Raw.getKey!_minKey? h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean#L1440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88473b62fb0212be85f1300ff151ce437fb36282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
