# knasterTarskiFixedPointLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ea40c1ec50ba633bc73534feff987cccd3c64bb590dc5fbf673e011f80c75c7",
  "kind": "abbrev",
  "lexical_name": "knasterTarskiFixedPointLattice",
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
  "slug": "knastertarskifixedpointlattice--d93481aa4660bc2bd29407ca",
  "source": {
    "blob": "cdb62e1aa5d1dffdb098b4fbe6da3adc91ac0f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d93481aa4660bc2bd29407ca2a4fad743b14b47cd3b02ff398d4ec86497cd578",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ea40c1ec50ba633bc73534feff987cccd3c64bb590dc5fbf673e011f80c75c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev knasterTarskiFixedPointLattice :
    CompleteLattice (Function.fixedPoints f) :=
  fixedPoints.completeLattice f

/-- The least fixed point supplied by Knaster--Tarski is fixed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb62e1aa5d1dffdb098b4fbe6da3adc91ac0f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
