# exponent_eq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c05d9d6e-fecc-cc47-6260-b092bdfcc8ec",
  "kind": "theorem",
  "lexical_name": "exponent_eq_card",
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
  "slug": "exponent-eq-card--80eb2f8be22d6fce112ab0d8",
  "source": {
    "blob": "a00e11ec5c5e5e3d6674727af3274dec1c447d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80eb2f8be22d6fce112ab0d8469b78d0a1aa8229dc377cfedd1cf9055a22e9bc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c05d9d6e-fecc-cc47-6260-b092bdfcc8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_eq_card [Finite G] [IsZGroup G] : Monoid.exponent G = Nat.card G := by
  refine dvd_antisymm Group.exponent_dvd_nat_card ?_
  rw [← Nat.factorization_prime_le_iff_dvd Nat.card_pos.ne' Monoid.exponent_ne_zero_of_finite]
  intro p hp
  have := Fact.mk hp
  let P : Sylow p G := default
  rw [← hp.pow_dvd_iff_le_factorization Monoid.exponent_ne_zero_of_finite,
      ← P.card_eq_multiplicity, ← (isZGroup p hp P).exponent_eq_card]
  exact Monoid.exponent_dvd_of_monoidHom P.1.subtype P.1.subtype_injective

open scoped IsMulCommutative in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00e11ec5c5e5e3d6674727af3274dec1c447d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
