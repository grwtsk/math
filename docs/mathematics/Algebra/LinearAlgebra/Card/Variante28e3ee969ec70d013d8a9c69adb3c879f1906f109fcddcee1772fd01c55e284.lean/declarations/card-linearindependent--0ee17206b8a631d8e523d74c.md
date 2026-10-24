# card_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28cf6453b209397fc9df7c227e41d6fb7c2b32f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e919a600-ea52-3adc-02ba-e69192a395c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d712140f-0743-28ed-8edd-d4318124de90",
  "kind": "theorem",
  "lexical_name": "card_linearIndependent",
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
  "slug": "card-linearindependent--0ee17206b8a631d8e523d74c",
  "source": {
    "blob": "28cf6453b209397fc9df7c227e41d6fb7c2b32f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ee17206b8a631d8e523d74c1a2c00045a80c515a7603fed7c84272c67989218",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d712140f-0743-28ed-8edd-d4318124de90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_linearIndependent {k : ℕ} (hk : k ≤ n) :
    Nat.card { s : Fin k → V // LinearIndependent K s } =
      ∏ i : Fin k, (q ^ n - q ^ i.val) := by
  rw [Nat.card_eq_fintype_card]
  induction k with
  | zero => simp only [linearIndependent_iff_ker, Finsupp.linearCombination_fin_zero, ker_zero,
      card_ofSubsingleton, Finset.univ_eq_empty, Finset.prod_empty]
  | succ k ih =>
      have (s : { s : Fin k → V // LinearIndependent K s }) :
          card ((Submodule.span K (Set.range (s : Fin k → V)))ᶜ : Set (V)) =
          (q) ^ n - (q) ^ k := by
            rw [card_compl_set, Module.card_eq_pow_finrank (K := K)
            (V := ((Submodule.span K (Set.range (s : Fin k → V))) : Set (V)))]
            simp only [SetLike.coe_sort_coe, finrank_span_eq_card s.2, card_fin]
            rw [Module.card_eq_pow_finrank (K := K)]
      simp [card_congr (equiv_linearIndependent k), sum_congr _ _ this, ih (Nat.le_of_succ_le hk),
        mul_comm, Fin.prod_univ_succAbove _ k]

end LinearIndependent

namespace Matrix

section field

variable {𝔽 : Type*} [Field 𝔽] [Fintype 𝔽]

local notation "q" => Fintype.card 𝔽

variable (n : ℕ)

/-- Equivalence between `GL n F` and `n` vectors of length `n` that are linearly independent. Given
by sending a matrix to its columns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Card/Variante28e3ee969ec70d013d8a9c69adb3c879f1906f109fcddcee1772fd01c55e284.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28cf6453b209397fc9df7c227e41d6fb7c2b32f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
