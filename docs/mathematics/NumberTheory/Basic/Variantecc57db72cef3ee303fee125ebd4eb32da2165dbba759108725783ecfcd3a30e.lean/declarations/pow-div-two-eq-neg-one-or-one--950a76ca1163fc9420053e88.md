# pow_div_two_eq_neg_one_or_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e5c5b94-0f6f-b8f6-8bfe-c7040096401f",
  "kind": "theorem",
  "lexical_name": "pow_div_two_eq_neg_one_or_one",
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
  "slug": "pow-div-two-eq-neg-one-or-one--950a76ca1163fc9420053e88",
  "source": {
    "blob": "578ebdd085f48c54d3dfe32fd36be0af80e42198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:950a76ca1163fc9420053e8820827fb8c9fe98ea01cf186fac948ab2030a4246",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e5c5b94-0f6f-b8f6-8bfe-c7040096401f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_div_two_eq_neg_one_or_one {a : ZMod p} (ha : a ≠ 0) :
    a ^ (p / 2) = 1 ∨ a ^ (p / 2) = -1 := by
  cases' Prime.eq_two_or_odd (@Fact.out p.Prime _) with hp2 hp_odd
  · subst p; revert a ha; intro a; fin_cases a; tauto; simp
  rw [← mul_self_eq_one_iff, ← pow_add, ← two_mul, two_mul_odd_div_two hp_odd]
  exact pow_card_sub_one_eq_one ha
#align zmod.pow_div_two_eq_neg_one_or_one ZMod.pow_div_two_eq_neg_one_or_one

end ZMod

end Euler

section Legendre

/-!
### Definition of the Legendre symbol and basic properties
-/


open ZMod

variable (p : ℕ) [Fact p.Prime]

/-- The Legendre symbol of `a : ℤ` and a prime `p`, `legendreSym p a`,
is an integer defined as

* `0` if `a` is `0` modulo `p`;
* `1` if `a` is a nonzero square modulo `p`
* `-1` otherwise.

Note the order of the arguments! The advantage of the order chosen here is
that `legendreSym p` is a multiplicative function `ℤ → ℤ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578ebdd085f48c54d3dfe32fd36be0af80e42198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
