# _root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.exists_prime_orderOf_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a5931ff-1d61-404a-d472-af944c46c93c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.exists_prime_orderOf_dvd_card",
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
  "slug": "root-grwtsk-algebra-grouptheory-cycletype-variantb1157e94ec00bc325510fac--d7dcbbaa6b7016c4922e4e99",
  "source": {
    "blob": "32060d7cde02dbd780f187ca6a3f322cc1021fbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 463,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant89d54839716d04fb097907ea8308e145067a0546a98c064ed09e7058360206db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7dcbbaa6b7016c4922e4e995091291c6eaae57134badbf316d4193216201ea6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant89d54839716d04fb097907ea8308e145067a0546a98c064ed09e7058360206db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a5931ff-1d61-404a-d472-af944c46c93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.exists_prime_orderOf_dvd_card {G : Type*} [Group G] [Fintype G] (p : ℕ)
    [hp : Fact p.Prime] (hdvd : p ∣ Fintype.card G) : ∃ x : G, orderOf x = p := by
  have hp' : p - 1 ≠ 0 := mt tsub_eq_zero_iff_le.mp (not_le_of_lt hp.out.one_lt)
  have Scard :=
    calc
      p ∣ Fintype.card G ^ (p - 1) := hdvd.trans (dvd_pow (dvd_refl _) hp')
      _ = Fintype.card (vectorsProdEqOne G p) := (VectorsProdEqOne.card G p).symm
  let f : ℕ → vectorsProdEqOne G p → vectorsProdEqOne G p := fun k v =>
    VectorsProdEqOne.rotate v k
  have hf1 : ∀ v, f 0 v = v := VectorsProdEqOne.rotate_zero
  have hf2 : ∀ j k v, f k (f j v) = f (j + k) v := fun j k v =>
    VectorsProdEqOne.rotate_rotate v j k
  have hf3 : ∀ v, f p v = v := VectorsProdEqOne.rotate_length
  let σ :=
    Equiv.mk (f 1) (f (p - 1)) (fun s => by rw [hf2, add_tsub_cancel_of_le hp.out.one_lt.le, hf3])
      fun s => by rw [hf2, tsub_add_cancel_of_le hp.out.one_lt.le, hf3]
  have hσ : ∀ k v, (σ ^ k) v = f k v := fun k v =>
    Nat.rec (hf1 v).symm (fun k hk => Eq.trans (congr_arg σ hk) (hf2 k 1 v)) k
  replace hσ : σ ^ p ^ 1 = 1 := Perm.ext fun v => by rw [pow_one, hσ, hf3, one_apply]
  let v₀ : vectorsProdEqOne G p :=
    ⟨Vector.replicate p 1, (List.prod_replicate p 1).trans (one_pow p)⟩
  have hv₀ : σ v₀ = v₀ := Subtype.ext (Subtype.ext (List.rotate_replicate (1 : G) p 1))
  obtain ⟨v, hv1, hv2⟩ := exists_fixed_point_of_prime' Scard hσ hv₀
  refine'
    Exists.imp (fun g hg => orderOf_eq_prime _ fun hg' => hv2 _)
      (List.rotate_one_eq_self_iff_eq_replicate.mp (Subtype.ext_iff.mp (Subtype.ext_iff.mp hv1)))
  · rw [← List.prod_replicate, ← v.1.2, ← hg, show v.val.val.prod = 1 from v.2]
  · rw [Subtype.ext_iff_val, Subtype.ext_iff_val, hg, hg', v.1.2]
    rfl
#align exists_prime_order_of_dvd_card exists_prime_orderOf_dvd_card

/-- For every prime `p` dividing the order of a finite additive group `G` there exists an element of
order `p` in `G`. This is the additive version of Cauchy's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant89d54839716d04fb097907ea8308e145067a0546a98c064ed09e7058360206db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant89d54839716d04fb097907ea8308e145067a0546a98c064ed09e7058360206db.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32060d7cde02dbd780f187ca6a3f322cc1021fbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
