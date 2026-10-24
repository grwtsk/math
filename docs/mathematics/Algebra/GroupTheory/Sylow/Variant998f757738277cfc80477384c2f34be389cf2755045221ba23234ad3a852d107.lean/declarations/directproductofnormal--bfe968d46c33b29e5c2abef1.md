# directProductOfNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f063f1f01a6ce22d06d37a46623c392e8d8ee3082164a0bdf4d28930f5e5ded",
  "kind": "def",
  "lexical_name": "directProductOfNormal",
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
  "slug": "directproductofnormal--bfe968d46c33b29e5c2abef1",
  "source": {
    "blob": "50a5f53b4fff7dd361a60d09d5b11fe11c0c7802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 790,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfe968d46c33b29e5c2abef19827a29506f07e25a9bfa29518deb5e35f26f50e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f063f1f01a6ce22d06d37a46623c392e8d8ee3082164a0bdf4d28930f5e5ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 790–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def directProductOfNormal [Fintype G]
    (hn : ∀ {p : ℕ} [Fact p.Prime] (P : Sylow p G), (↑P : Subgroup G).Normal) :
    (∀ p : (card G).factorization.support, ∀ P : Sylow p G, (↑P : Subgroup G)) ≃* G := by
  set ps := (Fintype.card G).factorization.support
  -- “The” Sylow subgroup for p
  let P : ∀ p, Sylow p G := default
  have hcomm : Pairwise fun p₁ p₂ : ps => ∀ x y : G, x ∈ P p₁ → y ∈ P p₂ → Commute x y := by
    rintro ⟨p₁, hp₁⟩ ⟨p₂, hp₂⟩ hne
    haveI hp₁' := Fact.mk (Nat.prime_of_mem_factorization hp₁)
    haveI hp₂' := Fact.mk (Nat.prime_of_mem_factorization hp₂)
    have hne' : p₁ ≠ p₂ := by simpa using hne
    apply Subgroup.commute_of_normal_of_disjoint _ _ (hn (P p₁)) (hn (P p₂))
    apply IsPGroup.disjoint_of_ne p₁ p₂ hne' _ _ (P p₁).isPGroup' (P p₂).isPGroup'
  refine' MulEquiv.trans (N := ∀ p : ps, P p) _ _
  -- There is only one Sylow subgroup for each p, so the inner product is trivial
  show (∀ p : ps, ∀ P : Sylow p G, P) ≃* ∀ p : ps, P p
  · -- here we need to help the elaborator with an explicit instantiation
    apply @MulEquiv.piCongrRight ps (fun p => ∀ P : Sylow p G, P) (fun p => P p) _ _
    rintro ⟨p, hp⟩
    haveI hp' := Fact.mk (Nat.prime_of_mem_factorization hp)
    haveI := subsingleton_of_normal _ (hn (P p))
    change (∀ P : Sylow p G, P) ≃* P p
    exact MulEquiv.piSubsingleton _ _
  show (∀ p : ps, P p) ≃* G
  apply MulEquiv.ofBijective (Subgroup.noncommPiCoprod hcomm)
  apply (bijective_iff_injective_and_card _).mpr
  constructor
  show Injective _
  · apply Subgroup.injective_noncommPiCoprod_of_independent
    apply independent_of_coprime_order hcomm
    rintro ⟨p₁, hp₁⟩ ⟨p₂, hp₂⟩ hne
    haveI hp₁' := Fact.mk (Nat.prime_of_mem_factorization hp₁)
    haveI hp₂' := Fact.mk (Nat.prime_of_mem_factorization hp₂)
    have hne' : p₁ ≠ p₂ := by simpa using hne
    apply IsPGroup.coprime_card_of_ne p₁ p₂ hne' _ _ (P p₁).isPGroup' (P p₂).isPGroup'
  show card (∀ p : ps, P p) = card G
  · calc
      card (∀ p : ps, P p) = ∏ p : ps, card (P p) := Fintype.card_pi
      _ = ∏ p : ps, p.1 ^ (card G).factorization p.1 := by
        congr 1 with ⟨p, hp⟩
        exact @card_eq_multiplicity _ _ _ p ⟨Nat.prime_of_mem_factorization hp⟩ (P p)
      _ = ∏ p in ps, p ^ (card G).factorization p :=
        (Finset.prod_finset_coe (fun p => p ^ (card G).factorization p) _)
      _ = (card G).factorization.prod (· ^ ·) := rfl
      _ = card G := Nat.factorization_prod_pow_eq_self Fintype.card_ne_zero

#align sylow.direct_product_of_normal Sylow.directProductOfNormal

end Sylow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean#L790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a5f53b4fff7dd361a60d09d5b11fe11c0c7802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
