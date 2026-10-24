# mvt_tags_for_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ded9c152-e6f6-3518-6fea-7d94ce48a2a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64d1e6e2-a0bc-46e5-8bcf-dcde306563d5",
  "kind": "lemma",
  "lexical_name": "mvt_tags_for_partition",
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
  "slug": "mvt-tags-for-partition--87a687fc4becdd4c90a142cc",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1294,
    "line": 1275,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a687fc4becdd4c90a142cc63f1411274784c6ddcc010142bdde964e3d927f1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d1e6e2-a0bc-46e5-8bcf-dcde306563d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1275–1294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvt_tags_for_partition {a b : ℝ} (P : IPart.IPartition a b)
    {g : ℝ → ℝ} {g' : ℝ → ℝ}
    (hg : ∀ x ∈ Set.Icc a b, HasDerivAt g (g' x) x) :
    ∃ T : TaggedPartition a b,
      T.toIPartition = P ∧
      ∀ i : Fin T.n, g (T.x i.succ) - g (T.x i.castSucc) = g' (T.xi i) * (T.x i.succ - T.x i.castSucc) := by
        have h_mean_value : ∀ i : Fin P.n, ∃ ξ ∈ Set.Icc (P.x i.castSucc) (P.x i.succ), g (P.x i.succ) - g (P.x i.castSucc) = g' ξ * (P.x i.succ - P.x i.castSucc) := by
          intro i
          by_cases h_eq : P.x i.castSucc = P.x i.succ;
          · aesop;
          · have h_mvt : ∃ ξ ∈ Set.Ioo (P.x i.castSucc) (P.x i.succ), deriv g ξ = (g (P.x i.succ) - g (P.x i.castSucc)) / (P.x i.succ - P.x i.castSucc) := by
              have := exists_deriv_eq_slope g ( lt_of_le_of_ne ( P.monotone ( Nat.le_succ _ ) ) h_eq );
              exact this ( continuousOn_of_forall_continuousAt fun x hx => HasDerivAt.continuousAt ( hg x ⟨ by linarith [ hx.1, P.monotone ( show 0 ≤ Fin.castSucc i from Nat.zero_le _ ), P.left ], by linarith [ hx.2, P.monotone ( show Fin.succ i ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩ ) ) ( fun x hx => DifferentiableAt.differentiableWithinAt ( hg x ⟨ by linarith [ hx.1, P.monotone ( show 0 ≤ Fin.castSucc i from Nat.zero_le _ ), P.left ], by linarith [ hx.2, P.monotone ( show Fin.succ i ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩ |> HasDerivAt.differentiableAt ) );
            obtain ⟨ ξ, hξ₁, hξ₂ ⟩ := h_mvt; exact ⟨ ξ, ⟨ hξ₁.1.le, hξ₁.2.le ⟩, by rw [ ← hg ξ ⟨ by linarith [ hξ₁.1, hξ₁.2, P.monotone ( show 0 ≤ Fin.castSucc i from Nat.zero_le _ ), P.left ], by linarith [ hξ₁.1, hξ₁.2, P.monotone ( show i.succ ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩ |> HasDerivAt.deriv, hξ₂, div_mul_cancel₀ _ ( sub_ne_zero_of_ne <| Ne.symm h_eq ) ] ⟩ ;
        choose ξ hξ using h_mean_value;
        refine' ⟨ ⟨ P, ξ, fun i => hξ i |>.1 ⟩, rfl, fun i => hξ i |>.2 ⟩

/-
The sum of absolute differences of `g` over `P` equals the Riemann-Stieltjes sum of `|g'|` with respect to `id` over a tagged partition `T` associated with `P`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L1275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
