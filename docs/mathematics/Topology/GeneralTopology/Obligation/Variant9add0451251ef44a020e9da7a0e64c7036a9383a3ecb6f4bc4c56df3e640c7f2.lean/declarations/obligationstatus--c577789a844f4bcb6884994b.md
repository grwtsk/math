# ObligationStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4544f2abc6afca9dc84b837074a39153dbbee356ade9cecb60deec6f438a4700",
  "kind": "inductive",
  "lexical_name": "ObligationStatus",
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
  "slug": "obligationstatus--c577789a844f4bcb6884994b",
  "source": {
    "blob": "8d2ace43c771a2b5f619a6372d13f44f7b44b9a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/Obligation/Variant9add0451251ef44a020e9da7a0e64c7036a9383a3ecb6f4bc4c56df3e640c7f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c577789a844f4bcb6884994bc8255cac8438fb64a8e65095d568a9178a76a923",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Obligation/Variant9add0451251ef44a020e9da7a0e64c7036a9383a3ecb6f4bc4c56df3e640c7f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4544f2abc6afca9dc84b837074a39153dbbee356ade9cecb60deec6f438a4700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ObligationStatus
  | open
  | blocked
  | discharged
  | superseded
  deriving DecidableEq, Repr

/-- A finite-scope research, proof, implementation, or governance obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Obligation/Variant9add0451251ef44a020e9da7a0e64c7036a9383a3ecb6f4bc4c56df3e640c7f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Obligation/Variant9add0451251ef44a020e9da7a0e64c7036a9383a3ecb6f4bc4c56df3e640c7f2.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2ace43c771a2b5f619a6372d13f44f7b44b9a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
