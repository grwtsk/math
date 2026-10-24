# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b381285353daa0bb9de02e477e5ea6147000f0dac6c7d7c44865a8577f1d0fa4",
  "kind": "def",
  "lexical_name": "exactFrontier",
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
  "slug": "exactfrontier--267cb0663d8b720f5dc5c02b",
  "source": {
    "blob": "2d1e060b56832e78ca7d89db756cb9e8a35a2dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicKernelDifferenceControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:267cb0663d8b720f5dc5c02bc7bc076e93b54b8fbc8e585de5ab0fd79e811a34",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicKernelDifferenceControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b381285353daa0bb9de02e477e5ea6147000f0dac6c7d7c44865a8577f1d0fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["signed sampled kernel is periodic with arbitrary lattice period",
   "equal ZMod residues give equal signed sampled-kernel values",
   "cyclic residue difference equals integer difference modulo 4X",
   "ArithmeticCyclicKernelDifferenceClaim is discharged",
   "arithmetic/cyclic prefix bridge is reduced to finite reindexing only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicKernelDifferenceControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicKernelDifferenceControls.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1e060b56832e78ca7d89db756cb9e8a35a2dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
