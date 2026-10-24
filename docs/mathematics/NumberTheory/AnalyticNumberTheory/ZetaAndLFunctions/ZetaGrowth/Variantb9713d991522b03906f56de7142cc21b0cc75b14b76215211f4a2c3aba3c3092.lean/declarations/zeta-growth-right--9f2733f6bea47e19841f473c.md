# zeta_growth_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6dfcb3b-45c3-e063-91b4-7e5333ed51be",
  "kind": "theorem",
  "lexical_name": "zeta_growth_right",
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
  "slug": "zeta-growth-right--9f2733f6bea47e19841f473c",
  "source": {
    "blob": "5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2733f6bea47e19841f473c997e13e956b62683606eb8c99e6cdda078121262",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6dfcb3b-45c3-e063-91b4-7e5333ed51be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_growth_right :
    ∃ A C : ℝ, 0 < C ∧ ∀ s : ℂ, (0.15 : ℝ) ≤ s.re → 1 ≤ ‖s - 1‖ →
      ‖riemannZeta s‖ ≤ C * (|s.im| + 3) ^ A :=
  ⟨1, 20 / 3, by norm_num, zeta_growth_right_at⟩

/-! ## Bounds on Re s ≥ 2 (the Jensen disc centre)  -/

/-- For Re s ≥ 2: ‖ζ(s) − 1‖ ≤ Σ_{n≥2} n^{−2} = π²/6 − 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variantb9713d991522b03906f56de7142cc21b0cc75b14b76215211f4a2c3aba3c3092.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5b1040a01ad9dbbd3a4919942e5830fbedf6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
