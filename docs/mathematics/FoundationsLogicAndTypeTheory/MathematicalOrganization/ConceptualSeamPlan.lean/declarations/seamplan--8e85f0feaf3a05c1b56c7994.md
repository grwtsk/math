# SeamPlan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12386124d688ee3fc6cb35279387ccc1965a739fb066363eed73e389a198a2fa",
  "kind": "structure",
  "lexical_name": "SeamPlan",
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
  "slug": "seamplan--8e85f0feaf3a05c1b56c7994",
  "source": {
    "blob": "59d2bb040d2b8f940c179c62a90a3cc343e8575c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e85f0feaf3a05c1b56c79946f9c2334ba7ea56a2e71c850514ad1b7998e11ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12386124d688ee3fc6cb35279387ccc1965a739fb066363eed73e389a198a2fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SeamPlan where
  source : SourceFileIdentity
  sourceByteCount : Nat
  sourceBytes : List Nat
  reconstructedBytes : List Nat
  commands : List CommandUnit
  dependencies : List DependencyEdge
  slices : List ConceptualSlice
  observedDeclarations : List DeclarationFingerprint
  sourcePublicFingerprints : List DeclarationFingerprint
  resultPublicFingerprints : List DeclarationFingerprint
  sourceNotices : List String
  resultNotices : List String
  resultModuleOrder : List String
  resultModuleDependencies : List ModuleDependency
  attributionStatus : String
  sourceLength : sourceBytes.length = sourceByteCount
  commandSpansCover :
    CoversFrom 0 (commands.map (fun command => command.identity.span)) sourceByteCount
  uniqueCommandOrdinals : (commandOrdinals commands).Nodup
  slicesCoverCommands : SlicesCoverExactly commands slices
  declarationsCovered : declarationFingerprints commands = observedDeclarations
  uniqueDeclarationNames :
    (observedDeclarations.map DeclarationFingerprint.name).Nodup
  hardDependenciesStayTogether :
    HardDependenciesCoLocated dependencies slices
  conservativeRelations : MachineSlicesConservative slices
  pinnedSlicesStable : PinnedSlicesStable slices
  exactReconstruction : reconstructedBytes = sourceBytes
  publicSignaturesPreserved :
    resultPublicFingerprints = sourcePublicFingerprints
  noticesPreserved : resultNotices = sourceNotices
  uniqueResultModules : resultModuleOrder.Nodup
  resultModulesTopologicallyOrdered :
    ∀ edge ∈ resultModuleDependencies,
      AppearsBefore resultModuleOrder edge.provider edge.consumer

/-- Exact source reconstruction is a first-class plan field, not an inference
from equal hashes or successful parsing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59d2bb040d2b8f940c179c62a90a3cc343e8575c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
