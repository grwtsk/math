# corollary_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3e58516c0c8c4ea8467cb1fcac533ee397489d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e037e8d34b4649ae537a72e2d2d49f3acfb0c4053cfc606bbfcf2f4ca0d63df4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2b07b25-54d0-8b6b-4135-631f1bba35ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70806629-83db-95b9-3779-800507a4bab9",
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
  "slug": "corollary-1--e89ad222d76a0646bee64d2e",
  "source": {
    "blob": "a3e58516c0c8c4ea8467cb1fcac533ee397489d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variante037e8d34b4649ae537a72e2d2d49f3acfb0c4053cfc606bbfcf2f4ca0d63df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89ad222d76a0646bee64d2e5a7749c1859e736aaeb9eee7f3480ad1bf9df653",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variante037e8d34b4649ae537a72e2d2d49f3acfb0c4053cfc606bbfcf2f4ca0d63df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70806629-83db-95b9-3779-800507a4bab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variante037e8d34b4649ae537a72e2d2d49f3acfb0c4053cfc606bbfcf2f4ca0d63df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variante037e8d34b4649ae537a72e2d2d49f3acfb0c4053cfc606bbfcf2f4ca0d63df4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3e58516c0c8c4ea8467cb1fcac533ee397489d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
