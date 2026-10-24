# complexify_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc595629-01cb-a8d2-9297-c36cdac8b402",
  "kind": "theorem",
  "lexical_name": "complexify_inner",
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
  "slug": "complexify-inner--1d1a5e893e8e236afd989fdd",
  "source": {
    "blob": "88dc7c5cfd7d236ee7cec7d1e87795159a882b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d1a5e893e8e236afd989fddb633023605e240415c14215ee5cb9ded52c87fc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc595629-01cb-a8d2-9297-c36cdac8b402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexify_inner (f g : Lp ℝ 2 (volume : Measure ℝ)) :
    ⟪complexify f, complexify g⟫_ℂ = (⟪f, g⟫_ℝ : ℂ) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((inner ℝ (f x) (g x) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [complexify_coe_ae f, complexify_coe_ae g] with x hf hg
      rw [hf, hg, RCLike.inner_apply', Real.inner_apply]
      simp
    _ = _ := integral_ofReal

/-- The original bump is a concrete complex L² state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variant147cf739c52224974aa694d5231c2286761557fd6f4ba89ec8898b1e6db4c7aa.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88dc7c5cfd7d236ee7cec7d1e87795159a882b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
