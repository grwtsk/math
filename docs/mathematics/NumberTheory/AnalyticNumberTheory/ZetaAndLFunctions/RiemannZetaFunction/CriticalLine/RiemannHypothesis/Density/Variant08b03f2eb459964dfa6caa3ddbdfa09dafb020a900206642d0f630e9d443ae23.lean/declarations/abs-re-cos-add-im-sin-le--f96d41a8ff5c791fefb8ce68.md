# abs_re_cos_add_im_sin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bfc2016-d5fd-a604-d19d-2acbb4ef7c3c",
  "kind": "lemma",
  "lexical_name": "abs_re_cos_add_im_sin_le",
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
  "slug": "abs-re-cos-add-im-sin-le--f96d41a8ff5c791fefb8ce68",
  "source": {
    "blob": "e9be1bee90e255b5e4ea77de82c24e304cf53f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96d41a8ff5c791fefb8ce68195095137ca215d2318c0df28c1a3931058b900e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bfc2016-d5fd-a604-d19d-2acbb4ef7c3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_re_cos_add_im_sin_le (z : ℂ) (θ : ℝ) :
    |z.re * Real.cos θ + z.im * Real.sin θ| ≤ ‖z‖ := by
  have h1 : (z.re * Real.cos θ + z.im * Real.sin θ) ^ 2 ≤ ‖z‖ ^ 2 := by
    have hcs := Real.cos_sq_add_sin_sq θ
    have hn : ‖z‖ ^ 2 = z.re ^ 2 + z.im ^ 2 := by
      rw [Complex.sq_norm, Complex.normSq_apply]; ring
    rw [hn]
    nlinarith [sq_nonneg (z.re * Real.sin θ - z.im * Real.cos θ)]
  exact abs_le_of_sq_le_sq' h1 (norm_nonneg _) |>.elim (fun h2 h3 => abs_le.2 ⟨h2, h3⟩)

/-- `|P_c(X; τ)| ≤ (1/π) S₁(c; X)` for every τ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9be1bee90e255b5e4ea77de82c24e304cf53f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
