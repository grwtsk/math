# scaledAreaSq_eq_scaledNormalSq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83d067ba-4bfe-b39b-6c31-f23b0332a216",
  "kind": "theorem",
  "lexical_name": "scaledAreaSq_eq_scaledNormalSq_div",
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
  "slug": "scaledareasq-eq-scalednormalsq-div--87299b5f9f07477f45adf569",
  "source": {
    "blob": "b106efe2886be623ec3f1bbf501aab8736fa0296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearScaledArea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87299b5f9f07477f45adf569eba0c8c6a01a9321d83a4fb2a81f1bb216cfa162",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83d067ba-4bfe-b39b-6c31-f23b0332a216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledAreaSq_eq_scaledNormalSq_div (data : Data) :
    scaledAreaSq data =
      scaledNormalSq data / data.boxVolume ^ 2 := by
  have hX : (data.X : ℝ) ≠ 0 := by exact_mod_cast data.X_pos.ne'
  have hY : (data.Y : ℝ) ≠ 0 := by exact_mod_cast data.Y_pos.ne'
  have hZ : (data.Z : ℝ) ≠ 0 := by exact_mod_cast data.Z_pos.ne'
  rw [scaledAreaSq, scaledFirst_cross_scaledSecond]
  unfold squaredNorm3 scaledNormalCross scaledNormalSq boxVolume
  field_simp [hX, hY, hZ]
  ring

/-- Equivalent multiplication form of the exact area identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GeometryOfNumbers/PrimitiveLinearScaledArea.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b106efe2886be623ec3f1bbf501aab8736fa0296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
