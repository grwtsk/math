# shell_card_le_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa0035bd-2022-487f-30bd-ea97147bbe03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d73c799-7a96-c848-2931-e9430465eccb",
  "kind": "theorem",
  "lexical_name": "shell_card_le_divisor",
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
  "slug": "shell-card-le-divisor--923b3d0336d57654a807b3b3",
  "source": {
    "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:923b3d0336d57654a807b3b33446c6f4d2ffbb15eac93e14100ccb918718fae3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d73c799-7a96-c848-2931-e9430465eccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_card_le_divisor (n : ℕ) :
    (Nat.card (ZeroShell n) : ℤ) ≤
      ∑ᶠ z, divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z := by
  classical
  let D := divisor poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2))
  let P := {z : ℂ // z ∈ D.support}
  have hpfinite : Finite P :=
    (D.finiteSupport (isCompact_closedBall (0 : ℂ) ((n : ℝ)+2))).to_subtype
  let _ : Fintype P := Fintype.ofFinite P
  let T := Σ p : P, Fin ((D p.val).toNat)
  have horder (o : ZeroShell n) :
      D o.val.1.val = (multiplicity o.val.1 : ℤ) :=
    poleCleared_divisor_at_point o.val.1 (shell_mem_closedBall n o)
  have hmem (o : ZeroShell n) : o.val.1.val ∈ D.support := by
    change D o.val.1.val ≠ 0
    rw [horder o]
    exact_mod_cast (multiplicity_positive o.val.1).ne'
  let f : ZeroShell n → T := fun o ↦
    ⟨⟨o.val.1.val, hmem o⟩,
      ⟨o.val.2.val, by simpa only [horder o, Int.toNat_natCast] using o.val.2.isLt⟩⟩
  have hf : Function.Injective f := by
    intro p q h
    apply Subtype.ext
    have heq : p.val.1 = q.val.1 := by
      apply Subtype.ext
      exact congrArg (fun t : T ↦ t.1.val) h
    apply Sigma.ext heq
    apply (Fin.heq_ext_iff (congrArg ZeroObject.multiplicity heq)).mpr
    exact congrArg (fun t : T ↦ t.2.val) h
  have hcard := Nat.card_le_card_of_injective f hf
  have hnonneg : ∀ z, 0 ≤ D z :=
    (show AnalyticOnNhd ℂ poleCleared (closedBall (0 : ℂ) ((n : ℝ)+2)) from
      fun z _ ↦ poleCleared_entire.analyticAt z).divisor_nonneg
  calc
    (Nat.card (ZeroShell n) : ℤ) ≤ (Nat.card T : ℤ) := by exact_mod_cast hcard
    _ = ∑ p : P, D p.val := by
      simp only [T, Nat.card_eq_fintype_card, Fintype.card_sigma, Fintype.card_fin, Nat.cast_sum]
      exact Finset.sum_congr rfl (fun p _ ↦ Int.toNat_of_nonneg (hnonneg p.val))
    _ = ∑ᶠ z, D z := by
      rw [← finsum_mem_support (fun z ↦ D z), ← finsum_set_coe_eq_finsum_mem]
      exact (finsum_eq_sum_of_fintype (fun p : P ↦ D p.val)).symm

/-- Real-cast form matching Mathlib's Jensen zero-count estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf41c95bae66453b7ff3bfda4d598f9359b158e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
