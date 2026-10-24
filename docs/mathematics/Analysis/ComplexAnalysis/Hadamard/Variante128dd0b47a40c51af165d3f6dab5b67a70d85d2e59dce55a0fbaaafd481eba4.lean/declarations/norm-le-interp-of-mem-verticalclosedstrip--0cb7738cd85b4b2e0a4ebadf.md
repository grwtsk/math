# norm_le_interp_of_mem_verticalClosedStrip'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d0aa3ea-e34a-81e2-1c79-772d99ea8c25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c9316ac-5202-123e-3cd5-d1f66b563dbf",
  "kind": "lemma",
  "lexical_name": "norm_le_interp_of_mem_verticalClosedStrip'",
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
  "slug": "norm-le-interp-of-mem-verticalclosedstrip--0cb7738cd85b4b2e0a4ebadf",
  "source": {
    "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 636,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cb7738cd85b4b2e0a4ebadfeae4a9b0059db2243a3c003e8978842512892f55",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9316ac-5202-123e-3cd5-d1f66b563dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interp_of_mem_verticalClosedStrip' {f : ℂ → E} {z : ℂ} {a b l u : ℝ}
    (hul : l < u) (hz : z ∈ verticalClosedStrip l u) (hd : DiffContOnCl ℂ f (verticalStrip l u))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip l u))
    (ha : ∀ z ∈ re ⁻¹' {l}, ‖f z‖ ≤ a) (hb : ∀ z ∈ re ⁻¹' {u}, ‖f z‖ ≤ b) :
    ‖f z‖ ≤ a ^ (1 - (z.re - l) / (u - l)) * b ^ ((z.re - l) / (u - l)) := by
  have hgoal := norm_le_interp_of_mem_verticalClosedStrip₀₁' (scale f l u)
    (mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip hul hz) (scale_diffContOnCl hul hd)
    (scale_bddAbove hul hB) (scale_bound_left ha) (scale_bound_right hb)
  simp only [scale, smul_eq_mul, sub_re] at hgoal
  rw [fun_arg_eq hul, bound_exp_eq hul] at hgoal
  exact hgoal

end HadamardThreeLines
end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefa0b4dfc332b435a80d9b47c06d9189f37353e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
