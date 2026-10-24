# unique_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5adee322a4cf6c24bc903241e020b7fd09cc8224",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afceed95-f0fb-5145-a7d2-38ac0c878488",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aa522a3-7f17-da78-5c4f-d69ab42cd6b1",
  "kind": "theorem",
  "lexical_name": "unique_irreducible",
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
  "slug": "unique-irreducible--efdb86c5fda6c63c33fde677",
  "source": {
    "blob": "5adee322a4cf6c24bc903241e020b7fd09cc8224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efdb86c5fda6c63c33fde677113fd67c5822cd0a97927dae1cdd6654de857b56",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa522a3-7f17-da78-5c4f-d69ab42cd6b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_irreducible ⦃p q : R⦄ (hp : Irreducible p) (hq : Irreducible q) :
    Associated p q := by
  rcases hR with ⟨ϖ, hϖ, hR⟩
  suffices ∀ {p : R} (_ : Irreducible p), Associated p ϖ by
    apply Associated.trans (this hp) (this hq).symm
  clear hp hq p q
  intro p hp
  obtain ⟨n, hn⟩ := hR hp.ne_zero
  have : Irreducible (ϖ ^ n) := hn.symm.irreducible hp
  rcases lt_trichotomy n 1 with (H | rfl | H)
  · obtain rfl : n = 0 := by
      clear hn this
      revert H n
      exact by decide
    simp [not_irreducible_one, pow_zero] at this
  · simpa only [pow_one] using hn.symm
  · obtain ⟨n, rfl⟩ : ∃ k, n = 1 + k + 1 := Nat.exists_eq_add_of_lt H
    rw [pow_succ] at this
    rcases this.isUnit_or_isUnit rfl with (H0 | H0)
    · exact (hϖ.not_unit H0).elim
    · rw [add_comm, pow_succ] at H0
      exact (hϖ.not_unit (isUnit_of_mul_isUnit_left H0)).elim
#align discrete_valuation_ring.has_unit_mul_pow_irreducible_factorization.unique_irreducible DiscreteValuationRing.HasUnitMulPowIrreducibleFactorization.unique_irreducible

variable [IsDomain R]

/-- An integral domain in which there is an irreducible element `p`
such that every nonzero element is associated to a power of `p` is a unique factorization domain.
See `DiscreteValuationRing.ofHasUnitMulPowIrreducibleFactorization`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5adee322a4cf6c24bc903241e020b7fd09cc8224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
