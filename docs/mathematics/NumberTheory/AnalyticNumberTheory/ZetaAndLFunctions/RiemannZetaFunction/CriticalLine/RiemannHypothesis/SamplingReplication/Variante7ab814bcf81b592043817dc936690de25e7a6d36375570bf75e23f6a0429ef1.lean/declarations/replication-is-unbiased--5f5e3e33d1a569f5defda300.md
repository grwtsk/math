# replication_is_unbiased

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c97167c-2c99-276f-3017-18b9f099c27c",
  "kind": "theorem",
  "lexical_name": "replication_is_unbiased",
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
  "slug": "replication-is-unbiased--5f5e3e33d1a569f5defda300",
  "source": {
    "blob": "c8875d554fbe4fa5b6c81e177c1efd6f14158a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 205,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variante7ab814bcf81b592043817dc936690de25e7a6d36375570bf75e23f6a0429ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5e3e33d1a569f5defda300b98c02016fc58a639217e534ff1f0ac95b576c02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variante7ab814bcf81b592043817dc936690de25e7a6d36375570bf75e23f6a0429ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c97167c-2c99-276f-3017-18b9f099c27c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replication_is_unbiased {κ : Type*} [Fintype κ] {m : ℕ}
    (hm : 0 < m) (p a : κ → ℝ) (hp : ∀ j, 0 < p j) (hsum : (∑ j, p j) = 1) :
    expectation m p (readoutMean m p a) = signedMean a := by
  have hmr : (m : ℝ) ≠ 0 := by exact_mod_cast hm.ne'
  have hsingle (i : Fin m) : expectation m p (fun ω ↦ a (ω i) / p (ω i)) = signedMean a := by
    rw [coordinate_expectation p (fun j ↦ a j / p j) hsum i]
    unfold signedMean
    apply Finset.sum_congr rfl
    intro j hj
    field_simp [(hp j).ne']
  unfold expectation readoutMean
  simp_rw [← mul_div_assoc, Finset.mul_sum]
  rw [← Finset.sum_div, Finset.sum_comm]
  change (∑ i, expectation m p (fun ω ↦ a (ω i) / p (ω i))) / m = _
  simp only [hsingle, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  field_simp [hmr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variante7ab814bcf81b592043817dc936690de25e7a6d36375570bf75e23f6a0429ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variante7ab814bcf81b592043817dc936690de25e7a6d36375570bf75e23f6a0429ef1.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8875d554fbe4fa5b6c81e177c1efd6f14158a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
