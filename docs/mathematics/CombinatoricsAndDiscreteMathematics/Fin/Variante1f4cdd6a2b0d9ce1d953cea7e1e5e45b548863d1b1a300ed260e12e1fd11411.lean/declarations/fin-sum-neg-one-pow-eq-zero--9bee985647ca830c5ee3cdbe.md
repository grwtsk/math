# Fin.sum_neg_one_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e2ec10b-3b71-560c-f819-1746e8d516f3",
  "kind": "lemma",
  "lexical_name": "Fin.sum_neg_one_pow_eq_zero",
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
  "slug": "fin-sum-neg-one-pow-eq-zero--9bee985647ca830c5ee3cdbe",
  "source": {
    "blob": "6fac3f96868091dc6b64672c4eea44ad31cc883b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 794,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bee985647ca830c5ee3cdbe9486196abf6fd755cbf282c84245928208107e3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e2ec10b-3b71-560c-f819-1746e8d516f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Fin.sum_neg_one_pow_eq_zero {α : Type*} [AddCommGroup α]
    {n : ℕ} (d : Fin (n + 2) → α) (r : Fin (n + 1) → α)
    (h_first : d 0 = r 0)
    (h_mid : ∀ i : Fin n, d i.succ.castSucc = r i.castSucc + r i.succ)
    (h_last : d (Fin.last _) = r (Fin.last _)) :
    ∑ i, (-1) ^ i.val • d i = 0 := by
  have h₁ : ∑ i : Fin (n + 2), (-1 : ℤ) ^ i.val • d i =
      d 0 +
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • (d (Fin.castSucc i).succ) +
      (-1 : ℤ) ^ (n + 1) • d (Fin.last (n + 1)) := by
    rw [Fin.sum_univ_succ, Fin.sum_univ_castSucc]
    simp [add_assoc]
  have h₂ : ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • (r (Fin.castSucc i) + r (Fin.succ i)) =
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • r (Fin.castSucc i) +
      ∑ i : Fin n, (-1 : ℤ) ^ (i.val + 1) • r (Fin.succ i) := by
    simp_rw [zsmul_add, Finset.sum_add_distrib]
  have h₃ := Fin.sum_univ_castSucc fun i ↦ (-1 : ℤ) ^ i.val • r i
  simp_all [Fin.sum_univ_succ, pow_succ']
  grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fac3f96868091dc6b64672c4eea44ad31cc883b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
