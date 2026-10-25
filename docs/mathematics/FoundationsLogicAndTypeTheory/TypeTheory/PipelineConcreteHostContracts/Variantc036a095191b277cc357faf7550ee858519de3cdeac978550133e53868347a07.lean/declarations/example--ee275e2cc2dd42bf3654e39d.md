# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea5b45dde0af5c8b603ad2f979e1ce65288d3c2571126792ee4094663e132fcb",
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
  "slug": "example--ee275e2cc2dd42bf3654e39d",
  "source": {
    "blob": "425d294ed3e432d44204057ef5f9df083b15d67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1095,
    "line": 1090,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee275e2cc2dd42bf3654e39d71a569bba618136bb131e712615e6c3f4415f79f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea5b45dde0af5c8b603ad2f979e1ce65288d3c2571126792ee4094663e132fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1090–1095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {Context Native Error : Type} (host : Host Context Native Error) (error : Error)
    (state final : DriverState Context Native)
    (accepted : (orchestrate host error state).result = .ok final) :
    (orchestrate host error state).trace = [.prepare, .observe, .construct, .digest, .validate] :=
  orchestrate_success_trace host error state final accepted

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean#L1090).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `425d294ed3e432d44204057ef5f9df083b15d67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
