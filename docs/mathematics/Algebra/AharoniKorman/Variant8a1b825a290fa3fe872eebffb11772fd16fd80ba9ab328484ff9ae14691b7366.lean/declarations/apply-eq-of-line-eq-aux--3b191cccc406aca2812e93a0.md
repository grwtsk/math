# apply_eq_of_line_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 765,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ae28ecc-031d-ddca-316d-21dde0c4d4bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68345132-198e-6d5f-7274-c35b9d6f398b",
  "kind": "lemma",
  "lexical_name": "apply_eq_of_line_eq_aux",
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
  "slug": "apply-eq-of-line-eq-aux--3b191cccc406aca2812e93a0",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 765,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b191cccc406aca2812e93a01bcc1a187ed38abaa6cf1b3702669b12d5c1653c",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68345132-198e-6d5f-7274-c35b9d6f398b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_eq_of_line_eq_aux (f : SpinalMap C) {n xl yl xh yh : ℕ}
    (hC : IsChain (· ≤ ·) C)
    (hlo : h(xl, yl, n) ∈ C) (hhi : h(xh, yh, n) ∈ C) (hx : xl ≤ xh) (hy : yl ≤ yh)
    {x y k : ℕ}
    (h₁l : h(xl, yl, n) ≤ h(x + k, y, n)) (h₂l : h(xl, yl, n) ≤ h(x, y + k, n))
    (h₁h : h(x + k, y, n) ≤ h(xh, yh, n)) (h₂h : h(x, y + k, n) ≤ h(xh, yh, n)) :
    f h(x + k, y, n) = f h(x, y + k, n) := by
  induction k generalizing x y with
  | zero => simp
  | succ k ih =>
      have : f h(x + (k + 1), y, n) = f h(x + k, y + 1, n) := by
        simp only [← add_assoc] at h₁l h₁h ⊢
        refine apply_eq_of_line_eq_step f hC hlo hhi hx hy h₁l ?_ h₁h ?_
        all_goals
          simp only [toHollom_le_toHollom_iff_fixed_right] at h₁l h₁h h₂l h₂h ⊢
          lia
      rw [this, ih, add_right_comm, add_assoc]
      all_goals
        simp only [toHollom_le_toHollom_iff_fixed_right] at h₁l h₁h h₂l h₂h ⊢
        lia

/--
For two points of `C` in the same level, and two points `(a, b, n)` and `(c, d, n)` between them,
if `a + b = c + d` then `f (a, b, n) = f (c, d, n)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
