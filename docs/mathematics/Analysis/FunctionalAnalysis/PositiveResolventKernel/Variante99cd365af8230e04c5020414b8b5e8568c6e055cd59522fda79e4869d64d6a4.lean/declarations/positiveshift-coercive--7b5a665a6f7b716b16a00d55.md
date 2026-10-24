# positiveShift_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fa55ab2-e594-da05-9cda-1a0f47028a4e",
  "kind": "theorem",
  "lexical_name": "positiveShift_coercive",
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
  "slug": "positiveshift-coercive--7b5a665a6f7b716b16a00d55",
  "source": {
    "blob": "63b7b2dbccfe7c5986a8587aff72469cc56aeefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b5a665a6f7b716b16a00d55533af7e46811c624c6dccdecc1b052d735b90eef",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fa55ab2-e594-da05-9cda-1a0f47028a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveShift_coercive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  have h := hS.re_inner_nonneg_left x
  have hself : (inner ℂ x x).re = ‖x‖ ^ 2 := inner_self_eq_norm_sq (𝕜 := ℂ) x
  simp only [positiveShift, add_apply, smul_apply,
    one_apply_eq_self, inner_add_left, inner_smul_left, Complex.add_re,
    Complex.conj_ofReal, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, hself]
  change 0 ≤ (inner ℂ (S x) x).re at h
  linarith

variable [CompleteSpace E]

/-- Positivity and a strictly positive shift prove genuine bounded invertibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63b7b2dbccfe7c5986a8587aff72469cc56aeefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
