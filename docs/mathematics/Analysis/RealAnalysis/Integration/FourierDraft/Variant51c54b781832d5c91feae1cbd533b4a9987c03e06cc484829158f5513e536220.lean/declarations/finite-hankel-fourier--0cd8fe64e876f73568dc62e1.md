# finite_hankel_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d75a39-c741-ba0f-e449-44e67dc11810",
  "kind": "theorem",
  "lexical_name": "finite_hankel_fourier",
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
  "slug": "finite-hankel-fourier--0cd8fe64e876f73568dc62e1",
  "source": {
    "blob": "185928316d7dbaac63a9a31712d3902a6589e2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd8fe64e876f73568dc62e18f95cb94b475adf14a3799e965a533171e647ddc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d75a39-c741-ba0f-e449-44e67dc11810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_hankel_fourier {A : ℝ} (hA : 1 ≤ A)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, 0 < m) (ht : ∀ n ∈ t, 0 < n) :
    (∫ x, SourceHankelReflection.forwardProfile A s c x *
      SourceHankelReflection.reflectedProfile A t d x) =
      (1 / (2 * Real.pi)) * ∫ ξ, jointFourierIntegrand A s t c d ξ := by
  rw [SourceHankelReflection.finite_hankel_pairing
    (lt_of_lt_of_le (by norm_num) hA) s t c d hs ht]
  have he : (∑ m ∈ s, ∑ n ∈ t, c m * d n *
      sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ) * (n : ℝ)))) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n) := by
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    rw [Real.log_mul (by exact_mod_cast (hs m hm).ne') (by exact_mod_cast (ht n hn).ne')]
  rw [he]
  exact finite_correlation_fourier hA s t c d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FourierDraft/Variant51c54b781832d5c91feae1cbd533b4a9987c03e06cc484829158f5513e536220.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `185928316d7dbaac63a9a31712d3902a6589e2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
