# additiveTwistedEndpointCrossCorrelation_eq_endpointPairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52b7f7cb-c4eb-583f-827b-f7949933af29",
  "kind": "theorem",
  "lexical_name": "additiveTwistedEndpointCrossCorrelation_eq_endpointPairs",
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
  "slug": "additivetwistedendpointcrosscorrelation-eq-endpointpairs--159a3dfb50ba6a76d620ec2e",
  "source": {
    "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 283,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159a3dfb50ba6a76d620ec2ec557bdd93f96ead38dd2c28dcd439a26eab5daaf",
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

Occurrence: `result:52b7f7cb-c4eb-583f-827b-f7949933af29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additiveTwistedEndpointCrossCorrelation_eq_endpointPairs
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    additiveTwistedEndpointCrossCorrelation b d k =
      endpointPairAdditiveTwist b d k := by
  classical
  unfold additiveTwistedEndpointCrossCorrelation
    endpointPairAdditiveTwist
    endpointSameParityStrictPairSet
    mertensEndpointCrossCollisionBaseSet
    mertensCrossCollisionMidpoint
    mertensSquarefreeMidpointEndpointProduct
  rw [Finset.sum_sigma']
  refine Finset.sum_bij'
    (fun na _ => (na.2 + 1, na.2 + 1 + 2 * (b - na.1)))
    (fun uv _ => ⟨b - (uv.2 - uv.1) / 2, uv.1 - 1⟩) ?_ ?_ ?_ ?_ ?_
  · rintro ⟨n, a⟩ hna
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range] at hna
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc]
    omega
  · rintro ⟨u, v⟩ huv
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc] at huv
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range]
    omega
  · rintro ⟨n, a⟩ hna
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range] at hna
    apply Sigma.ext
    · dsimp
      omega
    · exact heq_of_eq (by simp)
  · rintro ⟨u, v⟩ huv
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc] at huv
    apply Prod.ext <;> dsimp <;> omega
  · rintro ⟨n, a⟩ hna
    have hmid : (a + 1 + (a + 1 + 2 * (b - n))) / 2 =
        a + 1 + (b - n) := by omega
    have hend : a + 1 + (b - n) + (b - n) = a + 1 + 2 * (b - n) := by omega
    simp only [hmid, hend, Complex.ofReal_mul, mul_assoc]

/-- The same-parity pair sum is the sum of its even and odd parity pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
