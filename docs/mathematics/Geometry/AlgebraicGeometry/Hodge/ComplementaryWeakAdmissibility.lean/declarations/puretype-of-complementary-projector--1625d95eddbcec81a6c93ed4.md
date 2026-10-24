# pureType_of_complementary_projector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bccdc45-ad63-4934-badb-3db0b518f48f",
  "kind": "theorem",
  "lexical_name": "pureType_of_complementary_projector",
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
  "slug": "puretype-of-complementary-projector--1625d95eddbcec81a6c93ed4",
  "source": {
    "blob": "890c7a88553dad31868b7b0bba24397e75336c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 86,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1625d95eddbcec81a6c93ed4512d7765e56a3b0f2f271d1087d0055306097ca7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bccdc45-ad63-4934-badb-3db0b518f48f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pureType_of_complementary_projector
    {K D : Type*} [Field K] [AddCommGroup D] [Module K D]
    [FiniteDimensional K D]
    (P : ComplementaryNumerics)
    (F : DegreeOneSlope.DegreeOneFiltration K D)
    (slope : ℕ)
    (hslope : slope = 0 ∨ slope = 1)
    (hHodge : P.hodgeLeft = Module.finrank K F.F1)
    (hNewton : P.newtonLeft = slope * Module.finrank K D) :
    (slope = 0 ∧ DegreeOneSlope.HasPureType F .antiholomorphic) ∨
      (slope = 1 ∧ DegreeOneSlope.HasPureType F .holomorphic) := by
  let Q : DegreeOneSlope.PureSlopeNumerics K D :=
    { filtration := F
      slope := slope
      slope_zero_or_one := hslope
      hodge_eq_newton := by
        rw [← hHodge, P.left_eq, hNewton] }
  exact DegreeOneSlope.pureType_of_zero_or_one_slope Q

end GRWTSK.AlgebraicGeometry.Hodge.ComplementaryWeakAdmissibility
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890c7a88553dad31868b7b0bba24397e75336c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
