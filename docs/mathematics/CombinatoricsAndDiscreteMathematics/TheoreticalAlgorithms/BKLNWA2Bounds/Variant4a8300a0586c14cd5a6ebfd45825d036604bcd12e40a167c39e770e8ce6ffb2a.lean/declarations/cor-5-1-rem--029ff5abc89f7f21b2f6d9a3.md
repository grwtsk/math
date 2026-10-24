# cor_5_1_rem'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a99cb07-f7fb-7814-fb44-e84d468d412c",
  "kind": "theorem",
  "lexical_name": "cor_5_1_rem'",
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
  "slug": "cor-5-1-rem--029ff5abc89f7f21b2f6d9a3",
  "source": {
    "blob": "f3bffc5e0798c88f232ff7509c2bdb7c0e9f4eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 631,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:029ff5abc89f7f21b2f6d9a35031fa3141940b837d1144d66ff50f8672ff7181",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a99cb07-f7fb-7814-fb44-e84d468d412c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cor_5_1_rem' (b a₂b : ℝ) (m : ℕ)
    (hb : (b, a₂b, m) ∈ table_cor_5_1) :
    a₂ b ∈ Set.Icc a₂b (a₂b + 10 ^ (-m : ℝ)) := by
  -- Unfold a₂ to (1+α) * max(f(exp b), f(2^(⌊b/log2⌋₊+1)))
  unfold a₂ Inputs.a₂
  rw [alpha_eq]
  -- Case split on table membership
  simp only [table_cor_5_1, List.mem_cons, Prod.mk.injEq, List.mem_nil_iff, or_false] at hb
  rcases hb with
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩
  · rw [rpow_neg_nat]; exact a2_20_mem_Icc
  · rw [rpow_neg_nat]; exact a2_25_mem_Icc
  · rw [rpow_neg_nat]; exact a2_30_mem_Icc
  · rw [rpow_neg_nat]; exact a2_35_mem_Icc
  · rw [rpow_neg_nat]; exact a2_40_mem_Icc
  · rw [rpow_neg_nat]; exact a2_43_mem_Icc
  · rw [show (1 + 2.420e-4 : ℝ) = (1.0002420 : ℝ) from by norm_num, rpow_neg_nat]
    exact a2_100_mem_Icc
  · rw [show (1 + 3.748e-6 : ℝ) = (1.000003748 : ℝ) from by norm_num, rpow_neg_nat]
    exact a2_150_mem_Icc
  · rw [show (1 + 7.713e-8 : ℝ) = (1.00000007713 : ℝ) from by norm_num, rpow_neg_nat]
    exact a2_200_mem_Icc
  · rw [show (1 + 2.025e-8 : ℝ) = (1.00000002025 : ℝ) from by norm_num, rpow_neg_nat]
    exact a2_250_mem_Icc
  · rw [show (1 + 1.937e-8 : ℝ) = (1.00000001937 : ℝ) from by norm_num, rpow_neg_nat]
    exact a2_300_mem_Icc

@[blueprint
  "bklnw-cor-5-1-rem"
  (title := "Remark after BKLNW Corollary 5.1")
  (statement :=
    /-- We have the following values for $a_2$, given by the
    table after \cite[Corollary 5.1]{BKLNW}. -/)
  (latexEnv := "remark")
  (discussion := 853)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variant4a8300a0586c14cd5a6ebfd45825d036604bcd12e40a167c39e770e8ce6ffb2a.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3bffc5e0798c88f232ff7509c2bdb7c0e9f4eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
