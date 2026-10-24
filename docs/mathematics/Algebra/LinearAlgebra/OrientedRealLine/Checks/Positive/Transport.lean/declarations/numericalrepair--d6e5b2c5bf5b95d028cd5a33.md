# numericalRepair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3816e2779f1d6593d3f55ddd1d567f348b512a0475e0bc2b2d75b41ef4077fc3",
  "kind": "def",
  "lexical_name": "numericalRepair",
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
  "slug": "numericalrepair--d6e5b2c5bf5b95d028cd5a33",
  "source": {
    "blob": "0593b68aa8f51de44ad19714675177a401e407b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 40,
    "path": "GRWTSK/LinearAlgebra/OrientedRealLine/Checks/Positive/Transport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6e5b2c5bf5b95d028cd5a33271641e8c5c9dddac5fa4ff8377aaa6d942026c4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OrientedRealLine/Checks/Positive/Transport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3816e2779f1d6593d3f55ddd1d567f348b512a0475e0bc2b2d75b41ef4077fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def numericalRepair : FiniteComparisonRepair Unit where
  comparison := PositiveScaleEquiv.realLine
  thetaObject := fun _ => PositiveScaleEquiv.realLine
  qObject := PositiveScaleEquiv.realLine
  theta := fun _ => PositiveScaleEquiv.realLine.coordinate.symm 2
  q := PositiveScaleEquiv.realLine.coordinate.symm 3
  thetaMap := fun _ => PositiveScaleEquiv.dilation 2 (by norm_num)
  qMap := PositiveScaleEquiv.dilation 2 (by norm_num)
  coefficient := fun _ => 1
  error := fun _ => 0
  pointwise := by
    intro i
    rw [(PositiveScaleEquiv.dilation 2 (by norm_num)).realizes_scale,
      (PositiveScaleEquiv.dilation 2 (by norm_num)).realizes_scale]
    norm_num [PositiveScaleEquiv.dilation]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/OrientedRealLine/Checks/Positive/Transport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/OrientedRealLine/Checks/Positive/Transport.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0593b68aa8f51de44ad19714675177a401e407b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
