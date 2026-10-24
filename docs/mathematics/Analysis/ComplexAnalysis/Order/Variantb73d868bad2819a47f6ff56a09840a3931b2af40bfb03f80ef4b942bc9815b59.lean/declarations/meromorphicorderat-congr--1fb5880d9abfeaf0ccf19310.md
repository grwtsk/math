# meromorphicOrderAt_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faffa014-59e5-7685-8f25-9d78ac3d3399",
  "kind": "theorem",
  "lexical_name": "meromorphicOrderAt_congr",
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
  "slug": "meromorphicorderat-congr--1fb5880d9abfeaf0ccf19310",
  "source": {
    "blob": "66318e292faf329e4d3d60546920c8de585ae8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 292,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb5880d9abfeaf0ccf193104b89cf8353734d388fa7c3e6cf6e9a2573df00d9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faffa014-59e5-7685-8f25-9d78ac3d3399`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicOrderAt_congr (hf₁₂ : f₁ =ᶠ[𝓝[≠] x] f₂) :
    meromorphicOrderAt f₁ x = meromorphicOrderAt f₂ x := by
  by_cases hf₁ : MeromorphicAt f₁ x; swap
  · have : ¬ MeromorphicAt f₂ x := by
      contrapose hf₁
      exact hf₁.congr hf₁₂.symm
    simp [hf₁, this]
  rw [eq_comm]
  cases h₁f₁ : meromorphicOrderAt f₁ x with
  | top =>
    rw [meromorphicOrderAt_eq_top_iff] at h₁f₁ ⊢
    filter_upwards [hf₁₂, h₁f₁] using by grind
  | coe n =>
    obtain ⟨g, h₁g, h₂g, h₃g⟩ := (meromorphicOrderAt_eq_int_iff hf₁).1 h₁f₁
    rw [meromorphicOrderAt_eq_int_iff (hf₁.congr hf₁₂)]
    use g, h₁g, h₂g
    filter_upwards [hf₁₂, h₃g] using by grind

/-- Compatibility of notions of `order` for analytic and meromorphic functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantb73d868bad2819a47f6ff56a09840a3931b2af40bfb03f80ef4b942bc9815b59.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66318e292faf329e4d3d60546920c8de585ae8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
