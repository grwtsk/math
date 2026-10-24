# roughNumbersUpTo_eq_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:413bec18-9ea0-5007-d38e-ba89b1d5b4dd",
  "kind": "lemma",
  "lexical_name": "roughNumbersUpTo_eq_biUnion",
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
  "slug": "roughnumbersupto-eq-biunion--8801f2bb87f6c19d8e4e0776",
  "source": {
    "blob": "4f915e9deb1bfb3812656de52f147382487865e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 502,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8801f2bb87f6c19d8e4e07764c9c56af2e6e3fa1eb4abc50d1624f47ee342452",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:413bec18-9ea0-5007-d38e-ba89b1d5b4dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma roughNumbersUpTo_eq_biUnion (N k) :
    roughNumbersUpTo N k =
      ((N + 1).primesBelow \ k.primesBelow).biUnion
        fun p ↦ {m ∈ Finset.range (N + 1) | m ≠ 0 ∧ p ∣ m} := by
  ext m
  simp only [roughNumbersUpTo, mem_smoothNumbers_iff_forall_le, not_and, not_forall,
    not_lt, exists_prop, exists_and_left, Finset.mem_range, not_le, Finset.mem_filter,
    Finset.filter_congr_decidable, Finset.mem_biUnion, Finset.mem_sdiff, mem_primesBelow,
    show ∀ P Q : Prop, P ∧ (P → Q) ↔ P ∧ Q by tauto]
  simp_rw [← exists_and_left, ← not_lt]
  refine exists_congr fun p ↦ ?_
  have H₁ : m ≠ 0 → p ∣ m → m < N + 1 → p < N + 1 :=
    fun h₁ h₂ h₃ ↦ (le_of_dvd (Nat.pos_of_ne_zero h₁) h₂).trans_lt h₃
  have H₂ : m ≠ 0 → p ∣ m → ¬ m < p :=
    fun h₁ h₂ ↦ not_lt.mpr <| le_of_dvd (Nat.pos_of_ne_zero h₁) h₂
  constructor
  · rintro ⟨h₁, h₂, _, h₄, h₅, h₆⟩
    exact ⟨⟨⟨H₁ h₂ h₅ h₁, h₄⟩, fun h _ ↦ h₆ h⟩, h₁, h₂, h₅⟩
  · rintro ⟨⟨⟨_, h₂⟩, h₃⟩, h₄, h₅, h₆⟩
    exact ⟨h₄, h₅, H₂ h₅ h₆, h₂, h₆, fun h ↦ h₃ h h₂⟩

/-- The cardinality of the set of `k`-rough numbers `≤ N` is bounded by the sum of `⌊N/p⌋`
over the primes `k ≤ p ≤ N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f915e9deb1bfb3812656de52f147382487865e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
