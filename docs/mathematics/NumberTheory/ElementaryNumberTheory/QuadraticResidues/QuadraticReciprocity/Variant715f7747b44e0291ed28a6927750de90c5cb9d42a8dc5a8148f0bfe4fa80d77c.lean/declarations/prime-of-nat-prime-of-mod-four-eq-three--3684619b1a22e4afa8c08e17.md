# prime_of_nat_prime_of_mod_four_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f94492b2-4697-ad04-1230-95ad0af83480",
  "kind": "theorem",
  "lexical_name": "prime_of_nat_prime_of_mod_four_eq_three",
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
  "slug": "prime-of-nat-prime-of-mod-four-eq-three--3684619b1a22e4afa8c08e17",
  "source": {
    "blob": "1ff11fe8ba39c066c97f5e424ad2fe63a30aef88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3684619b1a22e4afa8c08e17e64e601c8262f6e9f9c8eab7df7744ea01b27722",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f94492b2-4697-ad04-1230-95ad0af83480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_nat_prime_of_mod_four_eq_three (p : ℕ) [hp : Fact p.Prime] (hp3 : p % 4 = 3) :
    Prime (p : ℤ[i]) :=
  irreducible_iff_prime.1 <|
    by_contradiction fun hpi =>
      let ⟨a, b, hab⟩ := sq_add_sq_of_nat_prime_of_not_irreducible p hpi
      have : ∀ a b : ZMod 4, a ^ 2 + b ^ 2 ≠ p := by
        erw [← ZMod.nat_cast_mod p 4, hp3]; exact by decide
      this a b (hab ▸ by simp)
#align gaussian_int.prime_of_nat_prime_of_mod_four_eq_three GaussianInt.prime_of_nat_prime_of_mod_four_eq_three

/-- A prime natural number is prime in `ℤ[i]` if and only if it is `3` mod `4` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff11fe8ba39c066c97f5e424ad2fe63a30aef88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
