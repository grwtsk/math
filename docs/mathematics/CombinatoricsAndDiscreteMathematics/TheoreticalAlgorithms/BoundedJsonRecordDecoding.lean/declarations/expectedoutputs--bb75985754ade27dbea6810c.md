# expectedOutputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368f435c925fc1394312738464b92e0a3d25a1a1ba3a22295a07618f9b7471bb",
  "kind": "def",
  "lexical_name": "expectedOutputs",
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
  "slug": "expectedoutputs--bb75985754ade27dbea6810c",
  "source": {
    "blob": "ea38b8da556b6da6bed48c2a03264ae686ff1b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb75985754ade27dbea6810ca72040955bd54347b460a9f16d96c8eb2b288531",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:368f435c925fc1394312738464b92e0a3d25a1a1ba3a22295a07618f9b7471bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expectedOutputs (plan certificate : Value) : Option (List SourceRefinement.Output) := do
  let sets ← readSets certificate
  let table ← objects certificate
  let archive ← sets[2]?
  let bindings ← planBindings plan
  let mapped ← allSome (fun binding => do
    let source ← sets[binding.sourceSet]?
    let index ← SourceRefinement.slot binding.sourcePath source.files
    pure (SourceRefinement.Output.mk binding.area binding.target index)) bindings
  let placeholders ← getArray "placeholders" plan
  let keepers ← allSome (fun placeholder => do
    let kind ← getString "kind" placeholder
    let path ← getString "path" placeholder
    if kind = "remove" then pure []
    else if kind = "write" ∨ kind = "existing" then do
      let index ← table.findIdx? (· = [])
      pure [SourceRefinement.Output.mk 0 path index]
    else none) placeholders
  let retained := archive.files.map fun (path, index) =>
    SourceRefinement.Output.mk 1 path index
  let result ← CertificateProducer.mergeOutputs (retained ++ mapped ++ keepers.flatten) []
  pure (sortBy targetLe result)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedJsonRecordDecoding.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea38b8da556b6da6bed48c2a03264ae686ff1b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
