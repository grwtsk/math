# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee4c4a98b239f87c948ce1e799eb4fb7940b41f20682d89ddbd7ae0fd71d5dc4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--568a9a8f777275e32e7eb5da",
  "source": {
    "blob": "d7a2c566779f835f1b60dc0eab9ef26cc3dae2e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variantbec399ff4bd4deadaf2b1dee904483af7abd30985a0c49b7e75ff2d549fec539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:568a9a8f777275e32e7eb5dac9cd5ca8fa72d7521cba0e3d4fa9f0279fea0165",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variantbec399ff4bd4deadaf2b1dee904483af7abd30985a0c49b7e75ff2d549fec539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee4c4a98b239f87c948ce1e799eb4fb7940b41f20682d89ddbd7ae0fd71d5dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  public instance : DataKind $ty := ⟨$kindName, by simp [Name.isAnonymous_iff_eq_anonymous]⟩)

data_type unit : Unit
data_type bool : Bool
data_type filepath : System.FilePath
data_type dynlib : Dynlib

/-- Internal macro for declaring new facet within Lake. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variantbec399ff4bd4deadaf2b1dee904483af7abd30985a0c49b7e75ff2d549fec539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Data/Variantbec399ff4bd4deadaf2b1dee904483af7abd30985a0c49b7e75ff2d549fec539.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a2c566779f835f1b60dc0eab9ef26cc3dae2e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
