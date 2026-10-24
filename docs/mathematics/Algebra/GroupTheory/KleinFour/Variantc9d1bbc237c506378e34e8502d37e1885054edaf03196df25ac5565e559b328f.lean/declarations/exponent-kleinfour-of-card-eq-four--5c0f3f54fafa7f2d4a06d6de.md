# exponent_kleinFour_of_card_eq_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2d15e69-a055-e355-34e0-70f0f17c6289",
  "kind": "theorem",
  "lexical_name": "exponent_kleinFour_of_card_eq_four",
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
  "slug": "exponent-kleinfour-of-card-eq-four--5c0f3f54fafa7f2d4a06d6de",
  "source": {
    "blob": "ccb212a2cef971d060984bffbaef8585dada3993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c0f3f54fafa7f2d4a06d6de68eb91b7cbf2c4d1602cb99b9ade1f83e8ddeea6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2d15e69-a055-e355-34e0-70f0f17c6289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_kleinFour_of_card_eq_four (hα4 : Nat.card α = 4) :
    Monoid.exponent (kleinFour α) = 2 := by
  have : Monoid.exponent (kleinFour α) ∣ 2 := by
    rw [Monoid.exponent_dvd]
    rintro ⟨⟨g, hg⟩, hg'⟩
    simp only [Subgroup.orderOf_mk, orderOf_dvd_iff_pow_eq_one]
    rw [← SetLike.mem_coe, coe_kleinFour_of_card_eq_four hα4] at hg'
    rcases hg' with hg' | hg'
    · convert! one_pow _
      simpa only [Set.mem_singleton_iff, Subgroup.mk_eq_one] using hg'
    · convert! pow_orderOf_eq_one g
      rw [← Equiv.Perm.lcm_cycleType, hg']
      simp
  rw [Nat.dvd_prime Nat.prime_two] at this
  apply Or.resolve_left this
  rw [Monoid.exp_eq_one_iff, ← Finite.card_le_one_iff_subsingleton,
    kleinFour_card_of_card_eq_four hα4]
  decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb212a2cef971d060984bffbaef8585dada3993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
