# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62d4e1d0a3f9e1995be5e60608e6925cc00f02947acb8315a5a2df701b234092",
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
  "slug": "example--d4214cd6e03faa63e84d72f4",
  "source": {
    "blob": "494e011a06cfd81e64a3aa9ce234615727b17ad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3,
    "line": 3,
    "path": "GRWTSK/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4214cd6e03faa63e84d72f45b3bee8efc6ceddfbb42235d7dd89d7f2eec1ee2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise__SourceOccurrence06e1fe4060035d16dae55c33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62d4e1d0a3f9e1995be5e60608e6925cc00f02947acb8315a5a2df701b234092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–3.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R : Type*} [Ring R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise__SourceOccurrence06e1fe4060035d16dae55c33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494e011a06cfd81e64a3aa9ce234615727b17ad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
