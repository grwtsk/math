# esymm_map_smul_aroots_mem_range_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:663dd349-7a97-b208-95b0-02c9951bd28b",
  "kind": "theorem",
  "lexical_name": "esymm_map_smul_aroots_mem_range_algebraMap",
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
  "slug": "esymm-map-smul-aroots-mem-range-algebramap--9139b01e56ffebb0db34a465",
  "source": {
    "blob": "0ccefaecdc270bed77155f8e431d01a42a1c47bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 116,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9139b01e56ffebb0db34a465d5e22278b0a35e7ba829b6cedd2de4e17ed8ecd2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:663dd349-7a97-b208-95b0-02c9951bd28b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem esymm_map_smul_aroots_mem_range_algebraMap [IsDomain A] {q : S[X]} {r : ℕ}
    (hsplit : (q.map (algebraMap S A)).Splits) :
    ((q.aroots A).map (q.leadingCoeff • ·)).esymm r ∈ Set.range (algebraMap S A) := by
  rw [← Algebra.mem_bot, ← Multiset.pow_smul_esymm]
  obtain rfl | hr0 := eq_or_ne r 0
  · simp
  obtain hr | hr := lt_or_ge q.natDegree r
  · simp [Multiset.esymm_of_card_lt ((Polynomial.card_roots_map_le_natDegree _).trans_lt hr)]
  obtain hlc | hlc := eq_or_ne (algebraMap S A q.leadingCoeff) 0
  · simp [Algebra.smul_def, map_pow, hlc, zero_pow hr0]
  have : q.leadingCoeff ^ r • (q.aroots A).esymm r =
      q.leadingCoeff ^ (r - 1) • ((-1) ^ r * (q.map (algebraMap S A)).coeff (q.natDegree - r)) := by
    have : (-1) ^ r * (q.map (algebraMap S A)).coeff (q.natDegree - r) =
        (q.map (algebraMap S A)).leadingCoeff * (q.aroots A).esymm r := by
      rw [Polynomial.coeff_eq_esymm_roots_of_card hsplit.natDegree_eq_card_roots.symm,
        Polynomial.natDegree_map_of_leadingCoeff_ne_zero _ hlc,
        Polynomial.leadingCoeff_map_of_leadingCoeff_ne_zero _ hlc,
        tsub_tsub_cancel_of_le hr,
        ← mul_assoc, mul_left_comm, ← mul_pow, ← pow_two, neg_one_sq, one_pow, mul_one]
      rw [Polynomial.natDegree_map_of_leadingCoeff_ne_zero _ hlc]
      exact Nat.sub_le _ _
    rw [this, Polynomial.leadingCoeff_map_of_leadingCoeff_ne_zero _ hlc,
      ← Algebra.smul_def, smul_smul, pow_sub_one_mul hr0]
  rw [this]
  exact SMulMemClass.smul_mem _ (mul_mem (pow_mem (by simp) _) (by simp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccefaecdc270bed77155f8e431d01a42a1c47bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
