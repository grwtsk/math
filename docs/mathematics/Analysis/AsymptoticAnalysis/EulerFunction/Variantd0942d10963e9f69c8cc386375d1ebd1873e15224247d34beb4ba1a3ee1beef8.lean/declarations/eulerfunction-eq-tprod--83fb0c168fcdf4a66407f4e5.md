# eulerFunction_eq_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daa73781-1f88-d651-5a70-56cccf642139",
  "kind": "theorem",
  "lexical_name": "eulerFunction_eq_tprod",
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
  "slug": "eulerfunction-eq-tprod--83fb0c168fcdf4a66407f4e5",
  "source": {
    "blob": "6716622248c8a860cefda6fa8ef560265949dadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83fb0c168fcdf4a66407f4e5e21cae7cc18715ab55ce70edcc71baa2501d55ef",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daa73781-1f88-d651-5a70-56cccf642139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerFunction_eq_tprod {x : R} (hx : ‖x‖ < 1) :
    eulerFunction x = ∏' n : ℕ, (1 - x ^ (n + 1)) := by
  rw [eulerFunction_eq_tsum_pentagonal_pair hx]
  refine (Pentagonal.tprod_one_sub_pow ?_ ?_ ?_ ?_ ?_).symm
  · exact tendsto_pow_atTop_nhds_zero_of_norm_lt_one hx
  · exact fun k ↦ (Pentagonal.summable_norm_pow_mul_prod k hx).of_norm
  · exact (Pentagonal.multipliable_one_sub_pow_add · hx)
  · exact (hasSum_eulerFunction_pentagonal_pair hx).summable
  · apply Tendsto.zero_mul_isBoundedUnder_le
    · refine isBoundedUnder_le_mul_tendsto_zero ⟨1, by simp⟩ ?_
      apply (tendsto_pow_atTop_nhds_zero_of_norm_lt_one hx).comp
      rw [tendsto_atTop_atTop]
      exact fun k ↦ ⟨k, fun n hn ↦ hn.trans (by grind)⟩
    · exact isBoundedUnder_of ⟨_, fun k ↦ Pentagonal.tsum_pow_mul_prod_bound k hx⟩

/-- **Pentagonal number theorem** for Euler function, expressed as an infinite product.
See `hasSum_eulerFunction_pentagonal` that expresses `eulerFunction` as an infinite sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716622248c8a860cefda6fa8ef560265949dadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
