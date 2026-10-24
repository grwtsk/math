# quotientEquivProdOfLE'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36bb0107e3b2e3a78c522b95e55f5c4e9bf3df1c986beefcb45352c6db134294",
  "kind": "def",
  "lexical_name": "quotientEquivProdOfLE'",
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
  "slug": "quotientequivprodofle--e34b9893a28f2f22d9306082",
  "source": {
    "blob": "17575735a218e0e4ddda4336f57576e40bbab48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 363,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e34b9893a28f2f22d930608290e09319e79abb0d977b1a20cd034747a9fb2f30",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36bb0107e3b2e3a78c522b95e55f5c4e9bf3df1c986beefcb45352c6db134294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquivProdOfLE' (h_le : s ≤ t) (f : α ⧸ t → α)
    (hf : Function.RightInverse f QuotientGroup.mk) : α ⧸ s ≃ (α ⧸ t) × t ⧸ s.subgroupOf t where
  toFun a :=
    ⟨a.map' id fun _ _ h => leftRel_apply.mpr (h_le (leftRel_apply.mp h)),
      a.map' (fun g : α => ⟨(f (Quotient.mk'' g))⁻¹ * g, leftRel_apply.mp (Quotient.exact' (hf g))⟩)
        fun b c h => by
        rw [leftRel_apply]
        change ((f b)⁻¹ * b)⁻¹ * ((f c)⁻¹ * c) ∈ s
        have key : f b = f c :=
          congr_arg f (Quotient.sound' (leftRel_apply.mpr (h_le (leftRel_apply.mp h))))
        rwa [key, mul_inv_rev, inv_inv, mul_assoc, mul_inv_cancel_left, ← leftRel_apply]⟩
  invFun a := by
    refine a.2.map' (fun (b : { x // x ∈ t}) => f a.1 * b) fun b c h => by
      rw [leftRel_apply] at h ⊢
      rwa [mul_inv_rev, mul_assoc, inv_mul_cancel_left]
  left_inv := by
    refine Quotient.ind' fun a => ?_
    simp_rw [Quotient.map'_mk'', id, mul_inv_cancel_left]
  right_inv := by
    refine Prod.rec ?_
    refine Quotient.ind' fun a => ?_
    refine Quotient.ind' fun b => ?_
    have key : Quotient.mk'' (f (Quotient.mk'' a) * b) = Quotient.mk'' a :=
      (QuotientGroup.mk_mul_of_mem (f a) b.2).trans (hf a)
    simp_rw [Quotient.map'_mk'', id, key, inv_mul_cancel_left]

/-- If `H ≤ K`, then `G/H ≃ G/K × K/H` nonconstructively.
The constructive version is `quotientEquivProdOfLE'`. -/
@[to_additive (attr := simps!) quotientEquivProdOfLE
  /-- If `H ≤ K`, then `G/H ≃ G/K × K/H` nonconstructively. The
constructive version is `quotientEquivProdOfLE'`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17575735a218e0e4ddda4336f57576e40bbab48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
