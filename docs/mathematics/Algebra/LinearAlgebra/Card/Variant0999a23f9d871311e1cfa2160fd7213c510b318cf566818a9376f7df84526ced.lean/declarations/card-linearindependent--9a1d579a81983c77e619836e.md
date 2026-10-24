# card_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3afa4e04-bb9d-0d9c-7664-46cf5477248a",
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
  "slug": "card-linearindependent--9a1d579a81983c77e619836e",
  "source": {
    "blob": "601a7993b6d2db8e5e8fed60bd1ccf640df5828a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Card/Variant0999a23f9d871311e1cfa2160fd7213c510b318cf566818a9376f7df84526ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1d579a81983c77e619836eb36874374fb6b6b37cbe1a6bbda1e90636ae605c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Card/Variant0999a23f9d871311e1cfa2160fd7213c510b318cf566818a9376f7df84526ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3afa4e04-bb9d-0d9c-7664-46cf5477248a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_linearIndependent {k : ℕ} (hk : k ≤ n) :
    Nat.card { s : Fin k → V // LinearIndependent K s } =
      ∏ i : Fin k, (q ^ n - q ^ i.val) := by
  rw [Nat.card_eq_fintype_card]
  induction k with
  | zero =>
      have : Unique { s : Fin 0 → V // (⊤ : Submodule K (Fin 0 →₀ K)) = ⊥ } :=
        uniqueOfSubsingleton ⟨0, Subsingleton.elim ..⟩
      simp_rw [linearIndependent_iff_ker, Finsupp.linearCombination_fin_zero, ker_zero,
        Finset.univ_eq_empty, Finset.prod_empty, card_unique]
  | succ k ih =>
      have (s : { s : Fin k → V // LinearIndependent K s }) :
          card ((Submodule.span K (Set.range (s : Fin k → V)))ᶜ : Set (V)) =
          (q) ^ n - (q) ^ k := by
            rw [card_compl_set, Module.card_eq_pow_finrank (K := K)
            (V := ((Submodule.span K (Set.range (s : Fin k → V))) : Set (V)))]
            simp only [SetLike.coe_sort_coe, finrank_span_eq_card s.2, card_fin]
            rw [Module.card_eq_pow_finrank (K := K)]
      simp [card_congr (equiv_linearIndependent k), sum_congr _ _ this, ih (Nat.le_of_succ_le hk),
        mul_comm, Fin.prod_univ_succAbove _ (Fin.last k), -Set.fintypeCard_eq_ncard]

end LinearIndependent

namespace Matrix

/-- The cardinal of a matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Card/Variant0999a23f9d871311e1cfa2160fd7213c510b318cf566818a9376f7df84526ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Card/Variant0999a23f9d871311e1cfa2160fd7213c510b318cf566818a9376f7df84526ced.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `601a7993b6d2db8e5e8fed60bd1ccf640df5828a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
