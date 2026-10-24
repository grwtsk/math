# spectralValue_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f8c17db-70b7-4876-6739-4c1aa311b88b",
  "kind": "theorem",
  "lexical_name": "spectralValue_X_pow",
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
  "slug": "spectralvalue-x-pow--dc2de2f76e707a00b27809fb",
  "source": {
    "blob": "966cc62fcc2a5f696404037c9fc864e171e85938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc2de2f76e707a00b27809fb535e371ba4eb8d269f8309c91f52eaa74ed48a03",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f8c17db-70b7-4876-6739-4c1aa311b88b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralValue_X_pow (n : ℕ) : spectralValue (X ^ n : R[X]) = 0 := by
  rw [spectralValue]
  unfold spectralValueTerms
  simp_rw [coeff_X_pow n, natDegree_X_pow]
  convert! ciSup_const using 2
  · ext m
    by_cases hmn : m < n
    · rw [ite_eq_left hmn, rpow_eq_zero_iff_of_nonneg (norm_nonneg _),
        ite_eq_right (_root_.ne_of_lt hmn), norm_zero, one_div, ne_eq, inv_eq_zero,
        ← cast_sub (le_of_lt hmn), cast_eq_zero, Nat.sub_eq_zero_iff_le]
      exact ⟨Eq.refl _, not_le_of_gt hmn⟩
    · rw [ite_eq_right hmn]
  · infer_instance

end Seminormed

section Normed

variable [NormedRing R]

/-- The spectral value of `p` equals zero if and only if `p` is of the form `X ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966cc62fcc2a5f696404037c9fc864e171e85938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
