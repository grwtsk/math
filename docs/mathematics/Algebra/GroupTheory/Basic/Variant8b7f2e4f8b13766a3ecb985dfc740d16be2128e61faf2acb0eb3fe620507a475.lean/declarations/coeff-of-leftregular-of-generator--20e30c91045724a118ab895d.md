# coeff_of_leftRegular_of_generator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "708fc1d96c2bb979a724d161dbebd6dac46d7fef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdb7c9da-e392-a962-e41b-d04765613ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6881b9b5-ebaa-4982-abd3-fb0c142d5a1a",
  "kind": "lemma",
  "lexical_name": "coeff_of_leftRegular_of_generator",
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
  "slug": "coeff-of-leftregular-of-generator--20e30c91045724a118ab895d",
  "source": {
    "blob": "708fc1d96c2bb979a724d161dbebd6dac46d7fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 553,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e30c91045724a118ab895d076496de6e1fe6fcbd1a306afb88e865f19818ed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6881b9b5-ebaa-4982-abd3-fb0c142d5a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_of_leftRegular_of_generator (g : G) (hg : ∀ x, x ∈ Subgroup.zpowers g)
    (x : k[G]) (hx : leftRegular k G g x = x) (γ : G) :
    x.coeff γ = x.coeff g := by
  rw [MonoidAlgebra.ext_iff, Finsupp.ext_iff] at hx
  rcases hg γ with ⟨i, rfl⟩
  induction i with
  | zero => simpa using hx g
  | succ n h =>
    simpa [← h, zpow_natCast, zpow_add_one, pow_mul_comm', pow_succ'] using (hx (g ^ (n + 1))).symm
  | pred n h =>
    simpa [zpow_sub, ← h, ← mul_inv_rev, ← pow_mul_comm'] using hx (g ^ (-n : ℤ))

@[deprecated (since := "2026-06-18")]
alias apply_eq_of_leftRegular_eq_of_generator := coeff_of_leftRegular_of_generator

end Cyclic
end Group

section DirectSum

variable {k G : Type*} [Semiring k] [Monoid G]
variable {ι : Type*} {V : ι → Type*}
variable [(i : ι) → AddCommMonoid (V i)] [(i : ι) → Module k (V i)]
variable (ρ : (i : ι) → Representation k G (V i))

open DirectSum

/-- Given representations of `G` on a family `V i` indexed by `i`, there is a
natural representation of `G` on their direct sum `⨁ i, V i`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `708fc1d96c2bb979a724d161dbebd6dac46d7fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
