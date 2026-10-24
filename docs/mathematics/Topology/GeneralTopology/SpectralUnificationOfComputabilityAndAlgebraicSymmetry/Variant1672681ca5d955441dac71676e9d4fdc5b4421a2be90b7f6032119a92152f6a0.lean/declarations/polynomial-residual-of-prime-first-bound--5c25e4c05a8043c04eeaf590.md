# polynomial_residual_of_prime_first_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40ef4fc8-9e07-70bb-17f8-cb2058242336",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b2f87e0-4c6f-8b1e-af6d-be6bdb409d65",
  "kind": "theorem",
  "lexical_name": "polynomial_residual_of_prime_first_bound",
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
  "slug": "polynomial-residual-of-prime-first-bound--5c25e4c05a8043c04eeaf590",
  "source": {
    "blob": "4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c25e4c05a8043c04eeaf590f16b92c16e05aa42d21a5a6caaf42968ccd414aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b2f87e0-4c6f-8b1e-af6d-be6bdb409d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_residual_of_prime_first_bound (m : ℕ) (D R : ℝ)
    (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hprime : ∀ A : ℝ, R ≤ A → primeFirstMoment A ≤ D * A ^ m) :
    PolynomialResidualTailUpperBound := by
  refine ⟨max m 1, D + Real.log 4 + 17, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hpow : 1 ≤ A ^ (max m 1) := one_le_pow₀ hA
  have hm : A ^ m ≤ A ^ (max m 1) := pow_le_pow_right₀ hA (le_max_left _ _)
  have h1 : A ≤ A ^ (max m 1) := by
    simpa only [pow_one] using pow_le_pow_right₀ hA (le_max_right m 1)
  have hc : Real.log 4 + 16 ≤ (Real.log 4 + 16) * A ^ (max m 1) :=
    le_mul_of_one_le_right (by positivity) hpow
  have hd := mul_le_mul_of_nonneg_left hm hD
  have hres := (abs_le.mp (higherPrimePower_abs_le A hA)).2
  nlinarith [hprime A hRA]

end
end EstimatePrimePowerRemoval
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
