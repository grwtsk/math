# actualCutoff_sqrt_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d951bfe-f67d-bdc2-9e3c-c043019e3bcd",
  "kind": "theorem",
  "lexical_name": "actualCutoff_sqrt_lower",
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
  "slug": "actualcutoff-sqrt-lower--5a43da1082593ac926ed9436",
  "source": {
    "blob": "330a33648b147894a99ae4f8c48add4eb95425c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a43da1082593ac926ed94364923d55009481e17872fc753592dab395a8a2e7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d951bfe-f67d-bdc2-9e3c-c043019e3bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCutoff_sqrt_lower {A : ℝ} (hA : 25600 ≤ A) :
    A - 1 / 2 ≤ Real.sqrt (vaughanCutoff A : ℝ) := by
  have hf : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) := (Nat.sub_one_lt_floor (A ^ 2)).le
  apply Real.le_sqrt_of_sq_le
  nlinarith

/-- The explicitly calibrated curvature error at the moving floor endpoint is below 9/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant08e1ca8cc0bacb0f773fb3c982f1c495ff7a3eefe6eff6a7a97eff25be49f354.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330a33648b147894a99ae4f8c48add4eb95425c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
