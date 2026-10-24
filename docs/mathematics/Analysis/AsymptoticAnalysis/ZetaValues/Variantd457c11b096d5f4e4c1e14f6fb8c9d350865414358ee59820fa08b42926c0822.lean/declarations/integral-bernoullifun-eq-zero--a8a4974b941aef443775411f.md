# integral_bernoulliFun_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6129240-9a76-49ed-77a4-8d13770a6f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cafc3d6-da3e-9f7d-895a-d2ad57766a44",
  "kind": "theorem",
  "lexical_name": "integral_bernoulliFun_eq_zero",
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
  "slug": "integral-bernoullifun-eq-zero--a8a4974b941aef443775411f",
  "source": {
    "blob": "771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a4974b941aef443775411f585b6a601e113d03dc8a4a6d5bcdcbe6ad706340",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cafc3d6-da3e-9f7d-895a-d2ad57766a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_bernoulliFun_eq_zero {k : ℕ} (hk : k ≠ 0) :
    ∫ x : ℝ in (0)..1, bernoulliFun k x = 0 := by
  rw [integral_eq_sub_of_hasDerivAt (fun x _ => antideriv_bernoulliFun k x)
      ((Polynomial.continuous _).intervalIntegrable _ _)]
  rw [bernoulliFun_eval_one]
  split_ifs with h
  · exfalso; exact hk (Nat.succ_inj.mp h)
  · simp

end BernoulliFunProps

section BernoulliFourierCoeffs

/-! Compute the Fourier coefficients of the Bernoulli functions via integration by parts. -/


/-- The `n`-th Fourier coefficient of the `k`-th Bernoulli function on the interval `[0, 1]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
