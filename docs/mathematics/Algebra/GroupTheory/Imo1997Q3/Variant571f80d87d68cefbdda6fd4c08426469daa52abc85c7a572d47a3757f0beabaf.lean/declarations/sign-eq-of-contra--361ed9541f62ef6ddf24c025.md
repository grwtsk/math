# sign_eq_of_contra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "365d4a51ed46830bc773f1a8c89e9f143e4f6f53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:491558ce-4544-8bc9-e93a-4531a84f05ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f0b6d79-9e70-df4e-9126-db577d95ba4c",
  "kind": "lemma",
  "lexical_name": "sign_eq_of_contra",
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
  "slug": "sign-eq-of-contra--361ed9541f62ef6ddf24c025",
  "source": {
    "blob": "365d4a51ed46830bc773f1a8c89e9f143e4f6f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 66,
    "path": "GRWTSK/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:361ed9541f62ef6ddf24c02557b9053140077afdf7fb47de0247eb769c380178",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0b6d79-9e70-df4e-9126-db577d95ba4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sign_eq_of_contra
    {x : Fin (n + 1) → ℝ} (hx₂ : ∀ i, |x i| ≤ ((n + 1 : ℕ) + 1) / 2)
    (h : ∀ (p : Perm (Fin (n + 1))), ((n + 1 : ℕ) + 1) / 2 < |S x p|) :
    ∀ p, sign (S x 1) = sign (S x p) := fun p ↦ by
  induction p using Submonoid.induction_of_closure_eq_top_right
    (Perm.mclosure_swap_castSucc_succ n) with
  | one => rfl
  | mul_right p s sform ih =>
    suffices |S x p - S x (p * s)| ≤ (n + 1 : ℕ) + 1 by
      rw [ih]; exact sign_eq_of_abs_sub_le (h _) (h _) (by norm_cast; lia) this
    rw [Set.mem_range] at sform; obtain ⟨i, hi⟩ := sform
    iterate 2 rw [S, ← sum_add_sum_compl {i.castSucc, i.succ}]
    have cg : ∑ j ∈ {i.castSucc, i.succ}ᶜ, (j + 1) * x ((p * s) j) =
        ∑ j ∈ {i.castSucc, i.succ}ᶜ, (j + 1) * x (p j) := by
      congr! 3 with j mj; rw [Perm.mul_apply, ← hi]; congr
      rw [mem_compl, mem_insert, mem_singleton, not_or] at mj
      exact swap_apply_of_ne_of_ne mj.1 mj.2
    rw [cg, add_sub_add_right_eq_sub,
      sum_pair castSucc_lt_succ.ne, sum_pair castSucc_lt_succ.ne,
      Perm.mul_apply, Perm.mul_apply, ← hi, swap_apply_left, swap_apply_right,
      add_comm, add_sub_add_comm, ← sub_mul, ← sub_mul,
      val_succ, val_castSucc, Nat.cast_add, Nat.cast_one, add_sub_cancel_left, sub_add_cancel_left,
      one_mul, neg_one_mul]
    calc
      _ ≤ |x (p i.succ)| + |-x (p i.castSucc)| := abs_add_le ..
      _ ≤ ((n + 1 : ℕ) + 1) / 2 + ((n + 1 : ℕ) + 1) / 2 := by
        rw [abs_neg]; exact add_le_add (hx₂ _) (hx₂ _)
      _ = _ := add_halves _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Imo1997Q3/Variant571f80d87d68cefbdda6fd4c08426469daa52abc85c7a572d47a3757f0beabaf.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `365d4a51ed46830bc773f1a8c89e9f143e4f6f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
