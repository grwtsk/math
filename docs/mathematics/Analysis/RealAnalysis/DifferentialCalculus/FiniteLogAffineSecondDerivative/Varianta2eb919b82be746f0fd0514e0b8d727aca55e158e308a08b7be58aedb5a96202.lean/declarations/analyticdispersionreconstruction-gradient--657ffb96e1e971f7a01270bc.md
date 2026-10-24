# analyticDispersionReconstruction_gradient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88a93ee8-1215-dde5-853b-318522c551cc",
  "kind": "theorem",
  "lexical_name": "analyticDispersionReconstruction_gradient",
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
  "slug": "analyticdispersionreconstruction-gradient--657ffb96e1e971f7a01270bc",
  "source": {
    "blob": "944138c19f841cb267ce473f274c983bba51ea25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:657ffb96e1e971f7a01270bc3ffdbec8032196712211132577b52a0e026ea821",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a93ee8-1215-dde5-853b-318522c551cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticDispersionReconstruction_gradient
    (theta : E) :
    F.analyticDispersionReconstruction.gradient theta =
      F.centroid theta :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Varianta2eb919b82be746f0fd0514e0b8d727aca55e158e308a08b7be58aedb5a96202.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `944138c19f841cb267ce473f274c983bba51ea25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
