# divXPowOrder_mul_divXPowOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73af5fb3-7efc-cfdb-7ebc-8928de517db3",
  "kind": "theorem",
  "lexical_name": "divXPowOrder_mul_divXPowOrder",
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
  "slug": "divxpoworder-mul-divxpoworder--990bb5a2329ec68611002055",
  "source": {
    "blob": "daf7c393bf4353c52a87b85e8951bd1abdd0586d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 393,
    "path": "GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:990bb5a2329ec686110020554e86d33695e92903af9427758f2dff2c15d48b7e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73af5fb3-7efc-cfdb-7ebc-8928de517db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divXPowOrder_mul_divXPowOrder {f g : R⟦X⟧} :
    divXPowOrder f * divXPowOrder g = divXPowOrder (f * g) := by
  by_cases h : f = 0 ∨ g = 0
  · rcases h with (h | h) <;> simp [h]
  push_neg at h
  apply X_pow_mul_cancel (k := f.order.toNat + g.order.toNat)
  calc
    X ^ (f.order.toNat + g.order.toNat) * (f.divXPowOrder * g.divXPowOrder)
    _ = (X ^ f.order.toNat * f.divXPowOrder) * (X ^ g.order.toNat * g.divXPowOrder) := by
        conv_rhs =>
          rw [mul_assoc, X_pow_mul, X_pow_mul, ← mul_assoc, mul_assoc, ← pow_add]
        rw [X_pow_mul, add_comm]
    _ = f * g := by
        simp [X_pow_order_mul_divXPowOrder]
    _ = X ^ ((f * g).order.toNat) * (f * g).divXPowOrder := by
        simp [X_pow_order_mul_divXPowOrder]
    _ = X ^ (f.order.toNat + g.order.toNat) * (f * g).divXPowOrder := by
        rw [order_mul, ENat.toNat_add (order_eq_top.not.mpr h.1) (order_eq_top.not.mpr h.2)]

@[deprecated (since := "2025-04-15")] alias divided_by_X_pow_orderMul :=
  divXPowOrder_mul_divXPowOrder

end NoZeroDivisors

end PowerSeries

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daf7c393bf4353c52a87b85e8951bd1abdd0586d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
