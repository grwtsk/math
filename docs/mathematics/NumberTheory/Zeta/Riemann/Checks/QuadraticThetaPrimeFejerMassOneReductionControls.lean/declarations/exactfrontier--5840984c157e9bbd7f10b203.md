# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf93578cf5bdf989f2768d91b4f353b376b4e3aeef635c8c8559cb4fc75ea5f",
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
  "slug": "exactfrontier--5840984c157e9bbd7f10b203",
  "source": {
    "blob": "3ecf6ba63ccee3af15231b43310b3405f55ab8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMassOneReductionControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5840984c157e9bbd7f10b2036c8ec942d60314192212cc2c9b028abc6fe6dfe2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMassOneReductionControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf93578cf5bdf989f2768d91b4f353b376b4e3aeef635c8c8559cb4fc75ea5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["period-4X mass one is reduced to finite Fourier-mode orthogonality",
   "zero mode sum is exactly 4X",
   "zero triangular coefficient is exactly one",
   "all nonzero support modes vanish under the orthogonality supplier",
   "remaining DFT theorem is a standard nontrivial-character sum on ZMod(4X)"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMassOneReductionControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMassOneReductionControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMassOneReductionControls.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ecf6ba63ccee3af15231b43310b3405f55ab8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
