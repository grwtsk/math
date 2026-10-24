# residue_exact_order_increase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caec1a36-d6d4-e505-9913-6a0bd2fc8f91",
  "kind": "theorem",
  "lexical_name": "residue_exact_order_increase",
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
  "slug": "residue-exact-order-increase--e8af5bccd15e642c14da020d",
  "source": {
    "blob": "b94a8842ece546e139336b7901b87ace4699846b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8af5bccd15e642c14da020d92f40a3992f77d76e5ecaf1108dce6c920d2ca3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caec1a36-d6d4-e505-9913-6a0bd2fc8f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residue_exact_order_increase (k : ℕ) :
    orderIncreaseSource k ≠ 0 ∧
      PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) ≠ 0 ∧
      (PowerSeries.X : PowerSeries ℤ) ^ k ∣ orderIncreaseSource k ∧
      ¬ (PowerSeries.X : PowerSeries ℤ) ^ (k + 1) ∣ orderIncreaseSource k ∧
      (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 1) ∣
        PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) ∧
      ¬ (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 2) ∣
        PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) := by
  have hs : ¬ (PowerSeries.X : PowerSeries ℤ) ^ (k + 1) ∣ orderIncreaseSource k := by
    intro hd
    have hz := PowerSeries.X_pow_dvd_iff.mp hd k (Nat.lt_succ_self k)
    rw [orderIncreaseSource_coeff] at hz
    norm_num at hz
  have ht : ¬ (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 2) ∣
      PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) := by
    rw [orderIncreaseSource_specializes]
    intro hd
    have hz := PowerSeries.X_pow_dvd_iff.mp hd (k + 1) (by omega)
    simpa using hz
  refine ⟨?_, ?_, ?_, hs, ?_, ht⟩
  · intro hz
    apply hs
    rw [hz]
    exact dvd_zero _
  · intro hz
    apply ht
    rw [hz]
    exact dvd_zero _
  · refine ⟨PowerSeries.C 2 + PowerSeries.X, ?_⟩
    unfold orderIncreaseSource
    rw [pow_succ]
    ring
  · rw [orderIncreaseSource_specializes]
    exact dvd_rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Transport the completion at the SAME anchor through an actual map out of S_i.
For residue targets this map is supplied by freyChartMap only at a unit Jacobian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94a8842ece546e139336b7901b87ace4699846b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
