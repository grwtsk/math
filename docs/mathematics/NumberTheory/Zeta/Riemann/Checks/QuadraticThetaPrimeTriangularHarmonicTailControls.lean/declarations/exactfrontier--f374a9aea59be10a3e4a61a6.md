# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51bb0ca67d63b06e06ab472e5ba7724ebabf04637642da69e125c01de0f774f3",
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
  "slug": "exactfrontier--f374a9aea59be10a3e4a61a6",
  "source": {
    "blob": "95cd56d1a510da7377f94c2031c52d06b9ce90d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularHarmonicTailControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f374a9aea59be10a3e4a61a60588de6c2431ff4d9eb933a59f91aa47ef0584e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularHarmonicTailControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51bb0ca67d63b06e06ab472e5ba7724ebabf04637642da69e125c01de0f774f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["triangular tail modeled by pointwise leakage O((X/N)/d)",
   "summing over lattice distance costs harmonic(X)",
   "harmonic(X) <= 1+log X",
   "balanced N~X^(1/3) keeps tail power at 2/3 up to logs",
   "actual pointwise kernel leakage theorem remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularHarmonicTailControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularHarmonicTailControls.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95cd56d1a510da7377f94c2031c52d06b9ce90d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
