# bklnw_cor_15_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:581d1ff9-71f7-40e5-1dce-6c1e650ed860",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e9a1629-9a2a-981a-2cbc-ba7deac18140",
  "kind": "theorem",
  "lexical_name": "bklnw_cor_15_1",
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
  "slug": "bklnw-cor-15-1--81cfe688ad10c9f0dab69810",
  "source": {
    "blob": "d23f277aa57f0df744f827aba10ffe84abca071f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 531,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cfe688ad10c9f0dab69810b49f9e1426660bae1aba3f7fc3c8e20b4b847001",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9a1629-9a2a-981a-2cbc-ba7deac18140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bklnw_cor_15_1 (b : ℝ)
    (hb1 : log 11 < b)
    (hb2 : b ≤ 19 * log 10)
    (ε : ℝ → ℝ)
    (hε : ∀ b₀ > 0, ∀ x ≥ exp b₀,
      Eψ x ≤ ε b₀) :
    ∀ x ≥ exp b,
      Eψ x ≤ max (0.94 / exp (b / 2))
        (ε (19 * log 10)) := by
  have hlog11_pos : (0 : ℝ) < log 11 := by
    positivity
  have hbpos : b > 0 := by linarith
  have h10_19 : (10 : ℝ) ^ (19 : ℕ) > 0 := by
    positivity
  have hlog_eq : log ((10 : ℝ) ^ (19 : ℕ)) = 19 * log 10 := by
    rw [Real.log_pow]
    ring
  rw [← hlog_eq]
  apply bklnw_lemma_15 0.94 11
    ((10 : ℝ) ^ (19 : ℕ))
  · intro x hx
    exact Buthe.theorem_2a hx.1 hx.2
  · exact hε
  · constructor
    · have : Real.exp (Real.log 11) < Real.exp b := Real.exp_lt_exp.mpr hb1
      rwa [Real.exp_log (by norm_num : (11 : ℝ) > 0)] at this
    · rw [← hlog_eq] at hb2
      rw [← Real.exp_log (by positivity : (10 : ℝ) ^ (19 : ℕ) > 0)]
      exact Real.exp_le_exp.mpr hb2
  · exact hbpos
  · norm_num
  · exact h10_19

@[blueprint
  "logan-function"
  (title := "Logan's function")
  (statement := /-- We define Logan's function
  $$ \ell_{c,\varepsilon}(\xi)
  = \frac{c}{\sinh c}
  \frac{\sin(\sqrt{(\xi\varepsilon)^2
  - c^2})}
  {\sqrt{(\xi\varepsilon)^2 - c^2}}. $$ -/)
  (latexEnv := "definition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/BKLNWApp/Variant202ad4db8f56bf7b19a8bbb3fba44f9bc01fe9e287a208d0ab0df6b7837eaa9d.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d23f277aa57f0df744f827aba10ffe84abca071f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
