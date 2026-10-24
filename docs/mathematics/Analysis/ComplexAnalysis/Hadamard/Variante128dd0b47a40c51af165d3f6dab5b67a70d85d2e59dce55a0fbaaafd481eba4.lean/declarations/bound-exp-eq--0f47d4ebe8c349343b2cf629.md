# bound_exp_eq

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
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba33171-f170-c3d5-2b03-6e98d2952cef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b28f0f3-8559-5ec3-92e6-2e2f8cf252fc",
  "kind": "lemma",
  "lexical_name": "bound_exp_eq",
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
  "slug": "bound-exp-eq--0f47d4ebe8c349343b2cf629",
  "source": {
    "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 601,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f47d4ebe8c349343b2cf629dc225e8d1cb31b30b042008b694ea6a97b070aa9",
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

Occurrence: `result:2b28f0f3-8559-5ec3-92e6-2e2f8cf252fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bound_exp_eq {l u : ℝ} (hul : l < u) (z : ℂ) :
    (z / (↑u - ↑l)).re - ((l : ℂ) / (↑u - ↑l)).re = (z.re - l) / (u - l) := by
  norm_cast
  rw [Complex.div_re, Complex.normSq_ofReal, Complex.ofReal_re, Complex.ofReal_im, mul_div_assoc,
    div_mul_eq_div_div_swap, div_self (by norm_cast; linarith),
    ← div_eq_mul_one_div]
  simp only [mul_zero, zero_div, add_zero]
  rw [← div_sub_div_same]

/--
**Hadamard three-line theorem**: If `f` is a bounded function, continuous on the
closed strip `re ⁻¹' [l, u]` and differentiable on open strip `re ⁻¹' (l, u)`, then for
`M(x) := sup ((norm ∘ f) '' (re ⁻¹' {x}))` we have that for all `z` in the closed strip
`re ⁻¹' [a,b]` the inequality
`‖f(z)‖ ≤ M(0) ^ (1 - ((z.re - l) / (u - l))) * M(1) ^ ((z.re - l) / (u - l))`
holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefa0b4dfc332b435a80d9b47c06d9189f37353e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
