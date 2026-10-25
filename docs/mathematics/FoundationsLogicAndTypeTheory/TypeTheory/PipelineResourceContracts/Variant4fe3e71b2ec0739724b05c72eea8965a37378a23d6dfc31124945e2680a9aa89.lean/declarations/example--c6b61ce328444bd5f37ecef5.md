# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c304407b74496ec5a4e1469ee79d35acdbad9b52d1f487340e784b60c564ae24",
  "kind": "example",
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
  "slug": "example--c6b61ce328444bd5f37ecef5",
  "source": {
    "blob": "5058555d596397f394c65684ff6d0f93fdcbab41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineResourceContracts/Variant4fe3e71b2ec0739724b05c72eea8965a37378a23d6dfc31124945e2680a9aa89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b61ce328444bd5f37ecef55888f033bc65007e0dac02d185e8f8648487010d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineResourceContracts/Variant4fe3e71b2ec0739724b05c72eea8965a37378a23d6dfc31124945e2680a9aa89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c304407b74496ec5a4e1469ee79d35acdbad9b52d1f487340e784b60c564ae24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {state next : Outputs} {key : TargetKey} {object : Nat} {metadata : Option Occurrence}
    (valid : Invariant state) (step : insert state key object metadata = some next) :
    Invariant next ∧ next.lowered.metadata = state.lowered.metadata ++ [metadata] :=
  ⟨insert_preserves_invariant valid step, insert_exact_metadata step⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineResourceContracts/Variant4fe3e71b2ec0739724b05c72eea8965a37378a23d6dfc31124945e2680a9aa89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineResourceContracts/Variant4fe3e71b2ec0739724b05c72eea8965a37378a23d6dfc31124945e2680a9aa89.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5058555d596397f394c65684ff6d0f93fdcbab41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
