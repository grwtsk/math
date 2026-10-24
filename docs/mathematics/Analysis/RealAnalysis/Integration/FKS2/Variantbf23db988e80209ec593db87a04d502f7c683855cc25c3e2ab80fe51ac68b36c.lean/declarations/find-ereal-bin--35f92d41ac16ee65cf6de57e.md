# find_ereal_bin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b263c51-1b24-57a0-b7d1-4da06493774b",
  "kind": "lemma",
  "lexical_name": "find_ereal_bin",
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
  "slug": "find-ereal-bin--35f92d41ac16ee65cf6de57e",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3713,
    "line": 3695,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f92d41ac16ee65cf6de57e827874bd4a0c0e43770a935ac648412f646d332e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b263c51-1b24-57a0-b7d1-4da06493774b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3695–3713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma find_ereal_bin {M : ℕ} (b' : Fin (M + 1) → EReal)
    (h_end : b' (Fin.last M) = ⊤) (v : ℝ) (hv : (v : EReal) ≥ b' 0) :
    ∃ i : Fin M, b' ⟨i.val, by omega⟩ ≤ (v : EReal) ∧
      (v : EReal) < b' ⟨i.val + 1, by omega⟩ := by
  by_contra! h_contra;
  -- By induction on $i$, we can show that $b' i \leq v$ for all $i$.
  have h_ind : ∀ i : Fin (M + 1), b' i ≤ v := by
    intro i; induction i using Fin.inductionOn <;> aesop;
  exact absurd ( h_ind ( Fin.last M ) ) ( by simp +decide [ h_end ] )

/-
PROBLEM
Helper: Given a monotone EReal sequence b' and an index i such that b'(i) ≤ v (finite),
    the sub-partition (toReal of b' restricted to first i+1 elements) is monotone,
    provided all values b'(j) for j ≤ i are between b'(0) and v.

PROVIDED SOLUTION
For j₁ ≤ j₂ in Fin (i.val + 1), we have ⟨j₁.val, _⟩ ≤ ⟨j₂.val, _⟩ as Fin (M+1), so b'(j₁) ≤ b'(j₂) by monotonicity of b'. Both values are finite: they are ≥ b'(0) ≠ ⊥ (by monotonicity, since j₁ ≥ 0), and ≤ b'(i) ≤ v (finite) so ≠ ⊤. Since both are finite EReal values with b'(j₁) ≤ b'(j₂), we get toReal(b'(j₁)) ≤ toReal(b'(j₂)) by EReal.toReal_le_toReal (for finite values, toReal preserves order).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L3695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
