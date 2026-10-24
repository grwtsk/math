# finite_test_signed_and_real_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fba8f9c-cfbe-80ee-dec4-bb490dd49556",
  "kind": "theorem",
  "lexical_name": "finite_test_signed_and_real_comparison",
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
  "slug": "finite-test-signed-and-real-comparison--389cac08e69b1ae1f112066a",
  "source": {
    "blob": "05baed43db04e28bc3e1a142a8b5097b0d071bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:389cac08e69b1ae1f112066aa87ce094c39c78a8d81b0499ec890a32e0430f68",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fba8f9c-cfbe-80ee-dec4-bb490dd49556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_test_signed_and_real_comparison
    (F : Finset CanonicalSquareTentTest)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
      ∀ f : CanonicalSquareTentTest, f ∈ F →
        ‖finiteSpectralValue n f - (canonicalCorrection f.index : ℂ)‖ ≤ ε ∧
        |zetaTarget f f - finiteApproximant n f f| ≤ ε ∧
        -ε ≤ finiteApproximant n f f := by
  obtain ⟨N, hN⟩ := finite_test_tail_uniform F ε hε
  refine ⟨N, ?_⟩
  intro n hn f hf
  have hbound : lowerDefect n f ≤ ε := hN n hn f hf
  refine ⟨?_, ?_, ?_⟩
  · exact (norm_finiteSpectralValue_sub_target_le n f).trans hbound
  · exact (abs_target_sub_finiteApproximant_le n f).trans hbound
  · exact (neg_le_neg hbound).trans
      (finiteApproximant_diagonal_lower_bound n f)

/-- Pure counterexample observable: an error spike escapes toward larger
test indices as the finite-height cutoff increases.  This is not
the canonical zeta tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05baed43db04e28bc3e1a142a8b5097b0d071bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
