# Module.computeExportInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ef45e0520cb259dc976eec9f0719afe6ebb7f11e7c06cb4987b6579b3a9bfee",
  "kind": "def",
  "lexical_name": "Module.computeExportInfo",
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
  "slug": "module-computeexportinfo--f1b8432369428830ab26a10f",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 473,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1b8432369428830ab26a10f631ecaf62f5d7d9f2d3c648c40286e795cee359a",
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

Occurrence: `declaration:1ef45e0520cb259dc976eec9f0719afe6ebb7f11e7c06cb4987b6579b3a9bfee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Module.computeExportInfo (mod : Module) : FetchM (Job ModuleExportInfo) := do
  (← mod.leanArts.fetch).mapM (sync := true) fun arts => do
    let input ← (← mod.input.fetch).await
    let importInfo ← (← mod.importInfo.fetch).await
    let artsTrace := BuildTrace.nil s!"{mod.name}:importArts"
    let metaArtsTrace := BuildTrace.nil s!"{mod.name}:importArts (meta)"
    let allArtsTrace := BuildTrace.nil s!"{mod.name}:importAllArts"
    let olean := arts.olean
    if input.header.isModule then
      let some oleanServer := arts.oleanServer?
        | error noServerOLeanError
      let some irSig := arts.irSig?
        | error noIRError
      let some ir := arts.ir?
        | error noIRError
      let some oleanPrivate := arts.oleanPrivate?
        | error noPrivateOLeanError
      return {
        srcTrace := input.trace
        -- NOTE: always includes `.server` and full `.ir` as this data is used by the server and we
        -- do not distinguish between it and cmdline build here (TODO: this is too dangerous!)
        arts := .ofArrays #[#[olean.path, oleanServer.path], #[irSig.path, ir.path]]
        artsTrace := artsTrace.mix olean.trace
        metaArtsTrace := metaArtsTrace.mix olean.trace |>.mix irSig.trace |>.mix ir.trace
        allArts := .ofArrays #[#[olean.path, oleanServer.path, oleanPrivate.path], #[irSig.path, ir.path]]
        allArtsTrace := allArtsTrace.mix
          olean.trace |>.mix oleanServer.trace |>.mix oleanPrivate.trace |>.mix irSig.trace |>.mix ir.trace
        transTrace := importInfo.transTrace
        metaTransTrace := importInfo.metaTransTrace
        allTransTrace := importInfo.allTransTrace
        legacyTransTrace := importInfo.legacyTransTrace
      }
    else
      return {
        srcTrace := input.trace
        arts := ⟨#[#[olean.path]]⟩
        artsTrace := artsTrace.mix olean.trace
        metaArtsTrace := metaArtsTrace.mix olean.trace
        allArts := ⟨#[#[olean.path]]⟩
        allArtsTrace:= allArtsTrace.mix olean.trace
        transTrace := importInfo.transTrace
        metaTransTrace := importInfo.metaTransTrace
        allTransTrace := importInfo.allTransTrace
        legacyTransTrace := importInfo.legacyTransTrace
      }

/-- The `ModuleFacetConfig` for the builtin `exportInfoFacet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
