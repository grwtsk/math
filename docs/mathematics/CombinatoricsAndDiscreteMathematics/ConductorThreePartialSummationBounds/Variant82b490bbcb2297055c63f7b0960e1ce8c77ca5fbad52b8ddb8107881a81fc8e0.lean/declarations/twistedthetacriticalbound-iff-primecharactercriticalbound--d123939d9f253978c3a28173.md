# twistedThetaCriticalBound_iff_primeCharacterCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1b750ed-d70e-4c3d-4a01-c900a530206f",
  "kind": "theorem",
  "lexical_name": "twistedThetaCriticalBound_iff_primeCharacterCriticalBound",
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
  "slug": "twistedthetacriticalbound-iff-primecharactercriticalbound--d123939d9f253978c3a28173",
  "source": {
    "blob": "e44b70837b1679df88b17ad33bcaf52a574b2b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d123939d9f253978c3a28173cc803631fa384c081106fbede60bb2971d47a57a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b750ed-d70e-4c3d-4a01-c900a530206f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedThetaCriticalBound_iff_primeCharacterCriticalBound :
    TwistedThetaCriticalBound ↔ PrimeCharacterCriticalBound := by
  constructor
  · rintro ⟨C, hC, x₀, hx₀, hTheta⟩
    refine ⟨4 * C + earlyThetaKernelMass x₀, ?_, max x₀ 3,
      by omega, ?_⟩
    · exact add_nonneg (mul_nonneg (by norm_num) hC)
        (earlyThetaKernelMass_nonneg x₀)
    · intro x hx
      simpa [primeCharacterPartialSum] using
        prime_bound_of_theta_bound hC hx₀ hTheta x hx
  · rintro ⟨C, hC, x₀, hx₀, hPrime⟩
    refine ⟨2 * (C + earlyPrimeMass x₀), ?_, max x₀ 3,
      by omega, ?_⟩
    · exact mul_nonneg (by norm_num) <|
        add_nonneg hC (earlyPrimeMass_nonneg x₀)
    · intro x hx
      apply theta_bound_of_prime_bound hC hx₀
        (fun n hn ↦ ?_) x hx
      simpa [primeCharacterPartialSum] using hPrime n hn

end

end Surface.Core.ConductorThreePartialSummationBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant82b490bbcb2297055c63f7b0960e1ce8c77ca5fbad52b8ddb8107881a81fc8e0.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44b70837b1679df88b17ad33bcaf52a574b2b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
