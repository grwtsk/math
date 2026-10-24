# ModuleImportInfo.addImport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0eac9f8a2fd14f11c52231c1df710ddf14a3b099613f99134db3211024425de1",
  "kind": "def",
  "lexical_name": "ModuleImportInfo.addImport",
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
  "slug": "moduleimportinfo-addimport--c05d14aba8436c505be01473",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 304,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c05d14aba8436c505be01473805b9a18e893fb35c6bdf7afb0a814bc2574c4d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0eac9f8a2fd14f11c52231c1df710ddf14a3b099613f99134db3211024425de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModuleImportInfo.addImport
  (info : ModuleImportInfo) (nonModule : Bool)
  (imp : Import) (expInfo : ModuleExportInfo)
: ModuleImportInfo :=
  let info :=
    if nonModule then
      {info with
        directArts := info.directArts.insert imp.module expInfo.allArts
        trace := info.trace.mix expInfo.legacyTransTrace |>.mix expInfo.allArtsTrace.withoutInputs
      }
    else if imp.importAll then
      {info with
        directArts := info.directArts.insert imp.module expInfo.allArts
        trace := info.trace.mix expInfo.allTransTrace |>.mix expInfo.allArtsTrace.withoutInputs
      }
    else
      let info :=
        if !info.directArts.contains imp.module  then -- do not demote `import all`
          {info with directArts := info.directArts.insert imp.module expInfo.arts}
        else
          info
      if imp.isMeta then
        {info with trace := info.trace.mix expInfo.metaTransTrace |>.mix expInfo.metaArtsTrace.withoutInputs}
      else
        {info with trace := info.trace.mix expInfo.transTrace |>.mix expInfo.artsTrace.withoutInputs}
  let info := {info with
    legacyTransTrace := info.legacyTransTrace
      |>.mix expInfo.legacyTransTrace
      |>.mix expInfo.allArtsTrace.withoutInputs
      |>.withoutInputs
  }
  let info :=
    if imp.importAll then
      {info with
        allTransTrace := info.allTransTrace
          |>.mix expInfo.allTransTrace
          |>.mix expInfo.allArtsTrace.withoutInputs
          |>.withoutInputs
      }
    else if imp.isMeta then
      {info with
        allTransTrace := info.allTransTrace
          |>.mix expInfo.metaTransTrace
          |>.mix expInfo.metaArtsTrace.withoutInputs
          |>.withoutInputs
      }
    else
      {info with
        allTransTrace := info.allTransTrace
          |>.mix expInfo.transTrace
          |>.mix expInfo.artsTrace.withoutInputs
          |>.withoutInputs
      }
  let info := {info with
    metaTransTrace := info.metaTransTrace
      |>.mix expInfo.metaTransTrace
      |>.mix expInfo.metaArtsTrace.withoutInputs
      |>.withoutInputs
  }
  if imp.isExported then
    if imp.isMeta then
      {info with
        transTrace := info.transTrace
          |>.mix expInfo.metaTransTrace
          |>.mix expInfo.metaArtsTrace.withoutInputs
          |>.withoutInputs
      }
    else
      {info with
        transTrace := info.transTrace
          |>.mix expInfo.transTrace
          |>.mix expInfo.artsTrace.withoutInputs
          |>.withoutInputs
      }
  else
    info

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
