# exponent_dvd_of_forall_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cddfeda1-185c-833a-b3f4-0e33a2891cd5",
  "kind": "theorem",
  "lexical_name": "exponent_dvd_of_forall_pow_eq_one",
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
  "slug": "exponent-dvd-of-forall-pow-eq-one--e9eb69ebf045d3c18b68d488",
  "source": {
    "blob": "fb2c7ab393bc6e1ed051576f052d90ffee4b2f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 171,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9eb69ebf045d3c18b68d488e68f3c62b9dc0ab635b060fd7c9ac825b2fc0d5c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cddfeda1-185c-833a-b3f4-0e33a2891cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_dvd_of_forall_pow_eq_one (G) [Monoid G] (n : ℕ) (hG : ∀ g : G, g ^ n = 1) :
    exponent G ∣ n := by
  rcases n.eq_zero_or_pos with (rfl | hpos)
  · exact dvd_zero _
  apply Nat.dvd_of_mod_eq_zero
  by_contra h
  have h₁ := Nat.pos_of_ne_zero h
  have h₂ : n % exponent G < exponent G := Nat.mod_lt _ (exponent_pos_of_exists n hpos hG)
  have h₃ : exponent G ≤ n % exponent G := by
    apply exponent_min' _ h₁
    simp_rw [← pow_eq_mod_exponent]
    exact hG
  linarith
#align monoid.exponent_dvd_of_forall_pow_eq_one Monoid.exponent_dvd_of_forall_pow_eq_one
#align add_monoid.exponent_dvd_of_forall_nsmul_eq_zero AddMonoid.exponent_dvd_of_forall_nsmul_eq_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2c7ab393bc6e1ed051576f052d90ffee4b2f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
