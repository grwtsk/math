# exactFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:314d59800e060687f089eb4b72c82e982e03a8f9dd6fb868db8b8401cfd0cec2",
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
  "slug": "exactfrontier--d51ef1d74e7eaea13a5392ac",
  "source": {
    "blob": "d2afd087c56924fe78cd36b284eba103e17e6e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularOrderRegionReindexingControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d51ef1d74e7eaea13a5392ac99e084e6844d9e54070bacfde062ad5d10d52244",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularOrderRegionReindexingControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:314d59800e060687f089eb4b72c82e982e03a8f9dd6fb868db8b8401cfd0cec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactFrontier : List String :=
  ["positive and negative offset regions are explicit biUnions of diagonal pair finsets",
   "distinct offsets give disjoint diagonal pair finsets",
   "sum_biUnion reindexes each order region by offset",
   "TriangularOrderRegionsToDiagonalsClaim is discharged",
   "next step is zero diagonal plus normalized coefficient assembly"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularOrderRegionReindexingControls
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularOrderRegionReindexingControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularOrderRegionReindexingControls.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2afd087c56924fe78cd36b284eba103e17e6e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
