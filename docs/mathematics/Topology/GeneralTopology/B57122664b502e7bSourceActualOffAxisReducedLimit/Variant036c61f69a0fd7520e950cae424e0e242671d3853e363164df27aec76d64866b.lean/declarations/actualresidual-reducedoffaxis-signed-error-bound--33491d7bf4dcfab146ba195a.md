# actualResidual_reducedOffAxis_signed_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc6c914-f495-88a0-0c91-ee43fc27d851",
  "kind": "theorem",
  "lexical_name": "actualResidual_reducedOffAxis_signed_error_bound",
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
  "slug": "actualresidual-reducedoffaxis-signed-error-bound--33491d7bf4dcfab146ba195a",
  "source": {
    "blob": "cea600ed3ff34e7eb7f73794b9585ed7d7eeba37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant036c61f69a0fd7520e950cae424e0e242671d3853e363164df27aec76d64866b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33491d7bf4dcfab146ba195aaa7d6bd035149d50c2cf14bd0e205553e2f50939",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant036c61f69a0fd7520e950cae424e0e242671d3853e363164df27aec76d64866b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc6c914-f495-88a0-0c91-ee43fc27d851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_reducedOffAxis_signed_error_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
        (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2| ≤
          (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
            actualReducedZeroEnvelope A0 A / 2 + C / (2 * A^9) := by
  obtain ⟨C,R0,hC,hR0,hcritical⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  obtain ⟨A0,hA0,hhead⟩ := actualResidual_reducedHead_signed_error_bound
  refine ⟨C,R0,A0,hC,hR0,hA0,fun A hA => ?_⟩
  have h200 := (le_max_left _ _).trans hA
  have hR := (le_max_right _ _).trans hA
  have hh := abs_le.mp (hhead A h200)
  have hc := abs_le.mp ((Complex.abs_re_le_norm
    (actualCriticalZeroHeightHead A (actualReducedZeroHeight A))).trans
      (hcritical A (actualReducedZeroHeight A) hR))
  have he := actualZeroHeightHead_re_eq_critical_add_offAxis A (actualReducedZeroHeight A)
  have hd : C / (2 * A^9) = (C / A^9) / 2 := by ring
  rw [hd]
  apply abs_le.mpr
  constructor <;> linarith [hh.1, hh.2, hc.1, hc.2]

/-- The original residual's actual reduced off-axis signed correction tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant036c61f69a0fd7520e950cae424e0e242671d3853e363164df27aec76d64866b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant036c61f69a0fd7520e950cae424e0e242671d3853e363164df27aec76d64866b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea600ed3ff34e7eb7f73794b9585ed7d7eeba37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
