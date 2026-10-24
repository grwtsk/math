# explicit_dilationTest_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2962f723-a7da-6cf9-2e0c-cb5302c5a2fa",
  "kind": "theorem",
  "lexical_name": "explicit_dilationTest_square_integrable",
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
  "slug": "explicit-dilationtest-square-integrable--092511da3ffbb2fc3c7dad99",
  "source": {
    "blob": "9f580b5686d6671ff8f9d9e326aa57826e43e734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 194,
    "path": "GRWTSK/Analysis/WeakDerivatives/PolynomialBump.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:092511da3ffbb2fc3c7dad9984df8c5d41b6f43364c4cfac2b8ac50bfa29e4c8",
  "verification": {
    "reference": "docs/verification/Analysis/WeakDerivatives/PolynomialBump.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2962f723-a7da-6cf9-2e0c-cb5302c5a2fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_dilationTest_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ dilationTest explicitSecondDerivative A x ^ 2) volume := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [explicit_dilationTest_eq_indicator A hpos]
  have hc : Continuous (fun x ↦ (secondInterior A x - bumpInterior A x / 4) ^ 2) :=
    ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4)).pow 2
  convert integrable_zeroExtension _ hc (-A) A using 1
  funext x
  simp only [indicator_apply]
  split_ifs <;> simp


end

end GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeakDerivatives/PolynomialBump.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeakDerivatives/PolynomialBump.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f580b5686d6671ff8f9d9e326aa57826e43e734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
