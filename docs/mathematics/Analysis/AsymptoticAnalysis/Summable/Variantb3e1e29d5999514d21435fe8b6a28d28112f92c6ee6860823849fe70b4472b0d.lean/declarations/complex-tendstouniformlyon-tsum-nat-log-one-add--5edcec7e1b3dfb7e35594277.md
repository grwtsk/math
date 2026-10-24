# Complex.tendstoUniformlyOn_tsum_nat_log_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c2c3fe0d760c2292a5285bdb3d131e35c789669",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:929b10ca-a83f-6482-de61-28a8cce9b0a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d60275f-dab8-952a-dceb-babdfacadb2a",
  "kind": "lemma",
  "lexical_name": "Complex.tendstoUniformlyOn_tsum_nat_log_one_add",
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
  "slug": "complex-tendstouniformlyon-tsum-nat-log-one-add--5edcec7e1b3dfb7e35594277",
  "source": {
    "blob": "0c2c3fe0d760c2292a5285bdb3d131e35c789669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 97,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5edcec7e1b3dfb7e355942776d78bb643c984c287fd30325cb76c2d91a4bb943",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d60275f-dab8-952a-dceb-babdfacadb2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Complex.tendstoUniformlyOn_tsum_nat_log_one_add {α : Type*} {f : ℕ → α → ℂ} (K : Set α)
    {u : ℕ → ℝ} (hu : Summable u) (h : ∀ᶠ n in atTop, ∀ x ∈ K, ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun (n : ℕ) (a : α) => ∑ i ∈ Finset.range n,
    (Complex.log (1 + f i a))) (fun a => ∑' i : ℕ, Complex.log (1 + f i a)) atTop K := by
  apply tendstoUniformlyOn_tsum_nat_eventually (hu.mul_left (3/2))
  obtain ⟨N, hN⟩ := Metric.tendsto_atTop.mp (Summable.tendsto_atTop_zero hu) (1/2) (one_half_pos)
  simp only [eventually_atTop, ge_iff_le] at *
  obtain ⟨N2, hN2⟩ := h
  refine ⟨max N N2, fun n hn x hx => ?_⟩
  apply le_trans (Complex.norm_log_one_add_half_le_self (z := (f n x)) ?_)
  · simp only [Nat.ofNat_pos, div_pos_iff_of_pos_left, mul_le_mul_left]
    exact hN2 n (le_of_max_le_right hn) x hx
  · apply le_trans (le_trans (hN2 n (le_of_max_le_right hn) x hx)
    (by simpa using Real.le_norm_self (u n))) (hN n (le_of_max_le_left hn)).le

section NormedRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantb3e1e29d5999514d21435fe8b6a28d28112f92c6ee6860823849fe70b4472b0d.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2c3fe0d760c2292a5285bdb3d131e35c789669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
