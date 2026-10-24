# actualResidual_reducedHead_signed_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0d90c2c-8117-ae63-2c66-85274c2680b9",
  "kind": "theorem",
  "lexical_name": "actualResidual_reducedHead_signed_error_bound",
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
  "slug": "actualresidual-reducedhead-signed-error-bound--73859dcde647ff5e79fff52a",
  "source": {
    "blob": "d7e5b8346bc0c5c7e81d46199fc3678d26ebe913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73859dcde647ff5e79fff52aadc33f3467aecf61503631dd4c28798d9d2beb2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0d90c2c-8117-ae63-2c66-85274c2680b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_reducedHead_signed_error_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
        (actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2| ≤
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualReducedZeroTail_norm_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hA1 : 1 ≤ A := by linarith
  have he := actualResidual_sub_signedHead_eq hA1 (actualReducedZeroHeight A)
  have ha := actual_archimedean_two_sided hA1
  have ht := (Complex.abs_re_le_norm
    (actualZeroHeightTail A (actualReducedZeroHeight A))).trans (hbound A hA)
  have hb := abs_le.mp ht
  have hcoeff : 0 ≤ (18 * (162826 / 7623 : ℝ)) / (2 * A^2) := by positivity
  have hc : (18 * (162826 / 7623 : ℝ)) / (2 * A^2) =
      ((18 * (162826 / 7623 : ℝ)) / A^2) / 2 := by ring
  rw [hc]
  apply abs_le.mpr
  constructor <;> linarith [ha.1, ha.2, hb.1, hb.2]

/-- The smaller actual signed head still determines the original residual up to o(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e5b8346bc0c5c7e81d46199fc3678d26ebe913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
