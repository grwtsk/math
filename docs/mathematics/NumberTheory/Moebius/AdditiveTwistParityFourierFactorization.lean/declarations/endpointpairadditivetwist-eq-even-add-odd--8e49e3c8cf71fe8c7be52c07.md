# endpointPairAdditiveTwist_eq_even_add_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e2b51ec-dff7-6606-9992-2ee0084789ef",
  "kind": "theorem",
  "lexical_name": "endpointPairAdditiveTwist_eq_even_add_odd",
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
  "slug": "endpointpairadditivetwist-eq-even-add-odd--8e49e3c8cf71fe8c7be52c07",
  "source": {
    "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 326,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e49e3c8cf71fe8c7be52c072359c3c4d81308a5c4b5efa519debe915150d382",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e2b51ec-dff7-6606-9992-2ee0084789ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPairAdditiveTwist_eq_even_add_odd
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    endpointPairAdditiveTwist b d k =
      parityMidpointPairTwist b d 0 k +
        parityMidpointPairTwist b d 1 k := by
  classical
  unfold endpointPairAdditiveTwist
    endpointSameParityStrictPairSet
    parityMidpointPairTwist
    endpointParityStrictPairSet
    endpointParitySet
  rw [← Finset.sum_union]
  · apply Finset.sum_congr
    · ext uv
      simp [Finset.product_eq_sprod]
      omega
    · intro uv _huv
      rfl
  · apply Finset.disjoint_left.mpr
    intro uv heven hodd
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product] at heven hodd
    have h0 := heven.1.1.2
    have h1 := hodd.1.1.2
    omega

/-- Final exact parity/Fourier factorization of the additive twist.

The left side is the binary additive-twisted Möbius correlation from PR #602.
The right side uses only two one-point Möbius exponential sums and their
diagonals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
