# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d81f4cc7-b89e-1df7-699f-bd2e65634155",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--68cb6f84e4542c73fb6b3092",
  "source": {
    "blob": "a18fe17a7041279ba22b49b088da11f0d277df40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 115,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68cb6f84e4542c73fb6b309201dd28e7d53b243479c0be9d4b8060bb78d2f008",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d81f4cc7-b89e-1df7-699f-bd2e65634155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction_on {motive : FreeCommRing α → Prop} (z : FreeCommRing α)
    (neg_one : motive (-1)) (of : ∀ b, motive (of b))
    (add : ∀ x y, motive x → motive y → motive (x + y))
    (mul : ∀ x y, motive x → motive y → motive (x * y)) : motive z :=
  have neg : ∀ x, motive x → motive (-x) := fun x ih => neg_one_mul x ▸ mul _ _ neg_one ih
  have one : motive 1 := neg_neg (1 : FreeCommRing α) ▸ neg _ neg_one
  have nsmul (n : ℕ) (x : FreeCommRing α) (hx : motive x) : motive (n • x) := by
    induction n with
    | zero => simpa using add (-1) 1 neg_one one
    | succ n ih => rw [succ_nsmul]; exact add _ _ ih hx
  have zsmul (n : ℤ) (x : FreeCommRing α) (hx : motive x) : motive (n • x) := by
    induction n using Int.negInduction with
    | nat n => rw [natCast_zsmul]; exact nsmul n x hx
    | neg ih n => rw [neg_zsmul]; exact neg _ (ih n)
  MonoidAlgebra.induction_on z
    (Multiplicative.rec (Multiset.induction one
      (fun x xs ih => by
        rw [← Multiset.singleton_add, ofAdd_add, map_mul]
        exact mul _ _ (of x) ih)))
    add zsmul

section lift

variable {R : Type v} [CommRing R] (f : α → R)

set_option backward.isDefEq.respectTransparency false in
set_option backward.privateInPublic true in
/-- A helper to implement `lift`. This is essentially `FreeCommMonoid.lift`, but this does not
currently exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18fe17a7041279ba22b49b088da11f0d277df40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
