# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9e3a7f4e48b63967f9ad6e2a861bf12539836e53882c9bed5c027e8a188e36b",
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
  "slug": "example--3fd7ef24beee9e16c3a0daf5",
  "source": {
    "blob": "bf9f9dfbb8b5d0471c4e09339be3c2d011455c09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineCorrespondenceContracts/Variantb07e997364cbc34409f33602745ea521b26573740c0a31cac2b49c19fccd8b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fd7ef24beee9e16c3a0daf5a58369823b29e0b18ee7ebe9ab5ed25b0415dd46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineCorrespondenceContracts/Variantb07e997364cbc34409f33602745ea521b26573740c0a31cac2b49c19fccd8b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9e3a7f4e48b63967f9ad6e2a861bf12539836e53882c9bed5c027e8a188e36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (input : Frozen) (certificate : RustCertificate)
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    ∃ entries outputs,
      realize input.objects (readSets input) (bindings input) = some entries ∧
      renderOccurrences input.objects (projectedEntries input certificate) = some entries ∧
      renderOutputs input.objects (projectedOutputs certificate) = some outputs ∧
      OccurrencePlans.decode outputs (OccurrencePlans.references entries) = some entries :=
  source_contract_exact_decode admitted contract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineCorrespondenceContracts/Variantb07e997364cbc34409f33602745ea521b26573740c0a31cac2b49c19fccd8b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineCorrespondenceContracts/Variantb07e997364cbc34409f33602745ea521b26573740c0a31cac2b49c19fccd8b9b.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9f9dfbb8b5d0471c4e09339be3c2d011455c09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
