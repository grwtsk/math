# le_gronwallBound_of_liminf_deriv_right_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96dd6846-cb50-287c-b9fd-d95d8cb8ddab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85729c6d-285c-25d2-2a9a-8a0cf5641bfc",
  "kind": "theorem",
  "lexical_name": "le_gronwallBound_of_liminf_deriv_right_le",
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
  "slug": "le-gronwallbound-of-liminf-deriv-right-le--e67ee2bb25d3dbc84af61a49",
  "source": {
    "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67ee2bb25d3dbc84af61a49649dde62598bd05759364dba75396fd902f77793",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85729c6d-285c-25d2-2a9a-8a0cf5641bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_gronwallBound_of_liminf_deriv_right_le {f f' : ℝ → ℝ} {δ K ε : ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Icc a b))
    (hf' : ∀ x ∈ Ico a b, ∀ r, f' x < r → ∃ᶠ z in 𝓝[>] x, (z - x)⁻¹ * (f z - f x) < r)
    (ha : f a ≤ δ) (bound : ∀ x ∈ Ico a b, f' x ≤ K * f x + ε) :
    ∀ x ∈ Icc a b, f x ≤ gronwallBound δ K ε (x - a) := by
  have H : ∀ x ∈ Icc a b, ∀ ε' ∈ Ioi ε, f x ≤ gronwallBound δ K ε' (x - a) := by
    intro x hx ε' (hε' : ε < ε')
    apply image_le_of_liminf_slope_right_lt_deriv_boundary hf hf'
    · rwa [sub_self, gronwallBound_x0]
    · exact fun x => hasDerivAt_gronwallBound_shift δ K ε' x a
    · grind
    · exact hx
  intro x hx
  change f x ≤ (fun ε' => gronwallBound δ K ε' (x - a)) ε
  convert! continuousWithinAt_const.closure_le _ _ (H x hx)
  · simp only [closure_Ioi, self_mem_Ici]
  exact (gronwallBound_continuous_ε δ K (x - a)).continuousWithinAt

/-- A Grönwall-like inequality: if `f : ℝ → E` is continuous on `[a, b]`, has right derivative
`f' x` at every point `x ∈ [a, b)`, and satisfies the inequalities `‖f a‖ ≤ δ`,
`∀ x ∈ [a, b), ‖f' x‖ ≤ K * ‖f x‖ + ε`, then `‖f x‖` is bounded by `gronwallBound δ K ε (x - a)`
on `[a, b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baf1a4b2c803603ebc385e55ff72ee2d0c08c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
