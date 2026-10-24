# map_prime_of_factor_orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1cd786c-be4d-7ceb-daf5-f57ef852cdf1",
  "kind": "theorem",
  "lexical_name": "map_prime_of_factor_orderIso",
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
  "slug": "map-prime-of-factor-orderiso--12a52e60ae561f7086a6091a",
  "source": {
    "blob": "cf6279dbc6e2330cd114b57f377f15a6fb4d8011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a52e60ae561f7086a6091a6184ac1b0f25628f5c24b97a49b88407db020f6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1cd786c-be4d-7ceb-daf5-f57ef852cdf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_prime_of_factor_orderIso [DecidableEq (Associates M)] {m p : Associates M}
    {n : Associates N} (hn : n ≠ 0) (hp : p ∈ normalizedFactors m) (d : Set.Iic m ≃o Set.Iic n) :
    Prime (d ⟨p, dvd_of_mem_normalizedFactors hp⟩ : Associates N) := by
  rw [← irreducible_iff_prime]
  refine' (Associates.isAtom_iff <| ne_zero_of_dvd_ne_zero hn (d ⟨p, _⟩).prop).mp ⟨_, fun b hb => _⟩
  · rw [Ne.def, ← Associates.isUnit_iff_eq_bot, Associates.isUnit_iff_eq_one,
      coe_factor_orderIso_map_eq_one_iff _ d]
    rintro rfl
    exact (prime_of_normalized_factor 1 hp).not_unit isUnit_one
  · obtain ⟨x, hx⟩ :=
      d.surjective ⟨b, le_trans (le_of_lt hb) (d ⟨p, dvd_of_mem_normalizedFactors hp⟩).prop⟩
    rw [← Subtype.coe_mk b _, ← hx] at hb
    letI : OrderBot { l : Associates M // l ≤ m } := Subtype.orderBot bot_le
    letI : OrderBot { l : Associates N // l ≤ n } := Subtype.orderBot bot_le
    suffices x = ⊥ by
      rw [this, OrderIso.map_bot d] at hx
      refine' (Subtype.mk_eq_bot_iff _ _).mp hx.symm
      simp
    obtain ⟨a, ha⟩ := x
    rw [Subtype.mk_eq_bot_iff]
    · exact
        ((Associates.isAtom_iff <| Prime.ne_zero <| prime_of_normalized_factor p hp).mpr <|
              irreducible_of_normalized_factor p hp).right
          a (Subtype.mk_lt_mk.mp <| d.lt_iff_lt.mp hb)
    simp
#align map_prime_of_factor_order_iso map_prime_of_factor_orderIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6279dbc6e2330cd114b57f377f15a6fb4d8011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
