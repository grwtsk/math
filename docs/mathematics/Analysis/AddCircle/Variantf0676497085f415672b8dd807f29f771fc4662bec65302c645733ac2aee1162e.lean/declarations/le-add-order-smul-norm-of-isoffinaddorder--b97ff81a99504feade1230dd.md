# le_add_order_smul_norm_of_isOfFinAddOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32956aed-9aed-bc99-bf70-96b21ce3518a",
  "kind": "theorem",
  "lexical_name": "le_add_order_smul_norm_of_isOfFinAddOrder",
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
  "slug": "le-add-order-smul-norm-of-isoffinaddorder--b97ff81a99504feade1230dd",
  "source": {
    "blob": "38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 269,
    "path": "GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97ff81a99504feade1230ddaeaeb60477c6afe610c9246128de75b73e421194",
  "verification": {
    "reference": "docs/verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32956aed-9aed-bc99-bf70-96b21ce3518a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_add_order_smul_norm_of_isOfFinAddOrder {u : AddCircle p} (hu : IsOfFinAddOrder u)
    (hu' : u ≠ 0) : p ≤ addOrderOf u • ‖u‖ := by
  obtain ⟨n, hn⟩ := exists_norm_eq_of_isOfFinAddOrder hu
  replace hu : (addOrderOf u : ℝ) ≠ 0
  · norm_cast
    exact (addOrderOf_pos_iff.mpr hu).ne'
  conv_lhs => rw [← mul_one p]
  rw [hn, nsmul_eq_mul, ← mul_assoc, mul_comm _ p, mul_assoc, mul_div_cancel' _ hu,
    mul_le_mul_left hp.out, Nat.one_le_cast, Nat.one_le_iff_ne_zero]
  contrapose! hu'
  simpa only [hu', Nat.cast_zero, zero_div, mul_zero, norm_eq_zero] using hn
#align add_circle.le_add_order_smul_norm_of_is_of_fin_add_order AddCircle.le_add_order_smul_norm_of_isOfFinAddOrder

end FiniteOrderPoints

end AddCircle

namespace UnitAddCircle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AddCircle/Variantf0676497085f415672b8dd807f29f771fc4662bec65302c645733ac2aee1162e.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c2c066aa52d6d94abd4ad2a3697efb4a1dd6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
