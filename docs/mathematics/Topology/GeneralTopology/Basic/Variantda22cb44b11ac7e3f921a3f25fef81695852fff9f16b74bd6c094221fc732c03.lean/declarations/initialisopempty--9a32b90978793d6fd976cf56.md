# initialIsoPEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b7d956a3153393e7f273051e995d6a30583ec2985011eee498ac90e0d2b391f",
  "kind": "def",
  "lexical_name": "initialIsoPEmpty",
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
  "slug": "initialisopempty--9a32b90978793d6fd976cf56",
  "source": {
    "blob": "57567c77edfdb571376aafcbd9851aa337e34edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 307,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a32b90978793d6fd976cf56ce3dbda23c3e7b9f1128c83133fe2fb0a7034ec0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b7d956a3153393e7f273051e995d6a30583ec2985011eee498ac90e0d2b391f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initialIsoPEmpty : ⊥_ TopCat.{u} ≅ TopCat.of PEmpty :=
  initialIsInitial.uniqueUpToIso isInitialPEmpty

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantda22cb44b11ac7e3f921a3f25fef81695852fff9f16b74bd6c094221fc732c03.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57567c77edfdb571376aafcbd9851aa337e34edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
