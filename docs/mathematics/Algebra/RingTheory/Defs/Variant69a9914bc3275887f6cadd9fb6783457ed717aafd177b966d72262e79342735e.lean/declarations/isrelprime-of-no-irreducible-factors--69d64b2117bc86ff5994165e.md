# isRelPrime_of_no_irreducible_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ad9592c-48a9-4627-6eee-bdddf1e83abc",
  "kind": "theorem",
  "lexical_name": "isRelPrime_of_no_irreducible_factors",
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
  "slug": "isrelprime-of-no-irreducible-factors--69d64b2117bc86ff5994165e",
  "source": {
    "blob": "da6d38bf4123984039eaf257bdac2a5dbc9d47eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 105,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d64b2117bc86ff5994165ecef998014154e05402225266b5040421faa66c4a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ad9592c-48a9-4627-6eee-bdddf1e83abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRelPrime_of_no_irreducible_factors {x y : α} (nonzero : ¬(x = 0 ∧ y = 0))
    (H : ∀ z : α, Irreducible z → z ∣ x → ¬z ∣ y) : IsRelPrime x y :=
  isRelPrime_of_no_nonunits_factors nonzero fun _z znu znz zx zy ↦
    have ⟨i, h1, h2⟩ := exists_irreducible_factor znu znz
    H i h1 (h2.trans zx) (h2.trans zy)

end WfDvdMonoid

section Prio

-- set_option default_priority 100

-- see Note [default priority]
/--
Unique factorization monoids are defined as `CancelCommMonoidWithZero`s with well-founded
strict divisibility relations, but this is equivalent to more familiar definitions:

Each element (except zero) is uniquely represented as a multiset of irreducible factors.
Uniqueness is only up to associated elements.

Each element (except zero) is non-uniquely represented as a multiset
of prime factors.

To define a UFD using the definition in terms of multisets
of irreducible factors, use the definition `of_existsUnique_irreducible_factors`

To define a UFD using the definition in terms of multisets
of prime factors, use the definition `of_exists_prime_factors`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant69a9914bc3275887f6cadd9fb6783457ed717aafd177b966d72262e79342735e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da6d38bf4123984039eaf257bdac2a5dbc9d47eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
