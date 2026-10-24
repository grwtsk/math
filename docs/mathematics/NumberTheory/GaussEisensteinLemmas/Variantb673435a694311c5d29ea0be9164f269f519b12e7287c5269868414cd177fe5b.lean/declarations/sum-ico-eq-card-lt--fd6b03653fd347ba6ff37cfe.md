# sum_Ico_eq_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6110bfae-4b8e-feb9-75ff-a9b26225f46d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17a7c21c-c6c0-0753-3093-54df9cfd43ad",
  "kind": "theorem",
  "lexical_name": "sum_Ico_eq_card_lt",
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
  "slug": "sum-ico-eq-card-lt--fd6b03653fd347ba6ff37cfe",
  "source": {
    "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 171,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd6b03653fd347ba6ff37cfee10d0476477a4c3ba2e41dffe9fdfac56598e739",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17a7c21c-c6c0-0753-3093-54df9cfd43ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_Ico_eq_card_lt {p q : ℕ} :
    ∑ a in Ico 1 (p / 2).succ, a * q / p =
    ((Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ =>
      x.2 * p ≤ x.1 * q).card :=
  if hp0 : p = 0 then by simp [hp0, Finset.ext_iff]
  else
    calc
      ∑ a in Ico 1 (p / 2).succ, a * q / p =
          ∑ a in Ico 1 (p / 2).succ, ((Ico 1 (q / 2).succ).filter fun x => x * p ≤ a * q).card :=
        Finset.sum_congr rfl fun x hx => div_eq_filter_card (Nat.pos_of_ne_zero hp0)
          (calc
            x * q / p ≤ p / 2 * q / p := Nat.div_le_div_right
              (mul_le_mul_of_nonneg_right (le_of_lt_succ <| (mem_Ico.mp hx).2) (Nat.zero_le _))
            _ ≤ _ := Nat.div_mul_div_le_div _ _ _)
      _ = _ := by
        rw [← card_sigma]
        exact card_congr (fun a _ => ⟨a.1, a.2⟩) (by
          simp (config := { contextual := true }) only [mem_filter, mem_sigma, and_self_iff,
            forall_true_iff, mem_product])
          (fun ⟨_, _⟩ ⟨_, _⟩ => by
            simp (config := { contextual := true }) only [Prod.mk.inj_iff, eq_self_iff_true,
              and_self_iff, heq_iff_eq, forall_true_iff])
          fun ⟨b₁, b₂⟩ h => ⟨⟨b₁, b₂⟩, by
            revert h
            simp (config := { contextual := true }) only [mem_filter, eq_self_iff_true,
              exists_prop_of_true, mem_sigma, and_self_iff, forall_true_iff, mem_product]⟩

/-- Each of the sums in this lemma is the cardinality of the set of integer points in each of the
  two triangles formed by the diagonal of the rectangle `(0, p/2) × (0, q/2)`. Adding them
  gives the number of points in the rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc54faba7afc40e533581d7dca05000d2498378f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
