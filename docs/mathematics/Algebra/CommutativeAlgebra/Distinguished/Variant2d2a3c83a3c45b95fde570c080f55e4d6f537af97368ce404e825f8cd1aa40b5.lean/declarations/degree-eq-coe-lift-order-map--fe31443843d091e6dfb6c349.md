# degree_eq_coe_lift_order_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0c21182-0bf9-d7d1-e9d0-8372a6f24bc9",
  "kind": "lemma",
  "lexical_name": "degree_eq_coe_lift_order_map",
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
  "slug": "degree-eq-coe-lift-order-map--fe31443843d091e6dfb6c349",
  "source": {
    "blob": "7706e6025a1431f0ceba9d9703117ce7479940aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 67,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe31443843d091e6dfb6c349a27bcfcc9b3a4a69641f675bf192510b9a03707a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c21182-0bf9-d7d1-e9d0-8372a6f24bc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degree_eq_coe_lift_order_map (distinguish : g.IsDistinguishedAt I)
    (notMem : PowerSeries.constantCoeff R h ∉ I) (eq : f = g * h) :
    g.degree = (f.map (Ideal.Quotient.mk I)).order.lift
      (order_finite_iff_ne_zero.2 (distinguish.map_ne_zero_of_eq_mul f h notMem eq)) := by
  have : Nontrivial R := _root_.nontrivial_iff.mpr
    ⟨0, PowerSeries.constantCoeff R h, ne_of_mem_of_not_mem I.zero_mem notMem⟩
  rw [Polynomial.degree_eq_natDegree distinguish.monic.ne_zero, Nat.cast_inj, ← ENat.coe_inj,
    ENat.coe_lift, Eq.comm, PowerSeries.order_eq_nat]
  have mapf : f.map (Ideal.Quotient.mk I) = (Polynomial.X ^ g.natDegree : (R ⧸ I)[X]) *
      h.map (Ideal.Quotient.mk I) := by
    simp [← map_eq_X_pow distinguish, eq]
  constructor
  · simp [mapf, PowerSeries.coeff_X_pow_mul', eq_zero_iff_mem, notMem]
  · intro i hi
    simp [mapf, PowerSeries.coeff_X_pow_mul', hi]

@[deprecated (since := "2025-04-27")]
alias _root_.IsDistinguishedAt.degree_eq_order_map := degree_eq_coe_lift_order_map

@[deprecated (since := "2025-05-19")]
alias degree_eq_order_map := degree_eq_coe_lift_order_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2d2a3c83a3c45b95fde570c080f55e4d6f537af97368ce404e825f8cd1aa40b5.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7706e6025a1431f0ceba9d9703117ce7479940aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
