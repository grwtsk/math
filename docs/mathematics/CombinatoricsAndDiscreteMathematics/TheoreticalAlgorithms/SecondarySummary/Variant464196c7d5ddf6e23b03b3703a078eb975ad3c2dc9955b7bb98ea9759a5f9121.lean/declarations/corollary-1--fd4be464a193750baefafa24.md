# corollary_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dab8b9b8-6f3e-b19b-4d06-8e82467a1587",
  "kind": "theorem",
  "lexical_name": "corollary_1",
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
  "slug": "corollary-1--fd4be464a193750baefafa24",
  "source": {
    "blob": "c32a0604b30673c0c50c6c344bf7ea2a0adc183e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4be464a193750baefafa24451820f2f281249bcb6458d41b8b0fb716497415",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dab8b9b8-6f3e-b19b-4d06-8e82467a1587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_1 (X σ A B C ε₀ : ℝ) (h : (X, σ, A, B, C, ε₀) ∈ Table_1) :
  Eθ.classicalBound (A + 0.1) B C 5.573412 (exp X) := by
  obtain ⟨hX, hB, hB2, hC, hCR, hA⟩ := table_1_bounds X σ A B C ε₀ h
  intro x hx
  have hx2 : x ≥ 2 := by
    have : (2 : ℝ) < exp 1 := lt_trans (by norm_num : (2:ℝ) < 2.7182818283) exp_one_gt_d9
    linarith [exp_le_exp.mpr (show (1:ℝ) ≤ X by linarith)]
  have hlogx : 5.5666305 ≤ log x := by
    have : X ≤ log x := le_trans (le_of_eq (log_exp X).symm) (log_le_log (exp_pos X) hx)
    linarith
  exact le_trans (FKS2.corollary_14 x hx2) (admissible_bound_weaken hB hB2 hC hCR hA hlogx)

@[blueprint "thm:pt_2"
  (title := "PT Corollary 2")
  (statement := /--
  One has
  \[
  |\pi(x) - \mathrm{Li}(x)| \leq 235 x (\log x)^{0.52} \exp(-0.8 \sqrt{\log x})
  \]
  for all $x \geq \exp(2000)$
  (equivalently $E_\pi$ classical bound with $A=235$, $B=1.52$, $C=0.8$, $R=1$).
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32a0604b30673c0c50c6c344bf7ea2a0adc183e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
