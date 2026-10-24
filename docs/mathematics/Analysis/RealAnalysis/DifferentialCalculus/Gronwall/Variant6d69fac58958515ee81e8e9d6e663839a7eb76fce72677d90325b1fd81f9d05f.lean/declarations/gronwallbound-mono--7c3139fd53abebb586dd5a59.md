# gronwallBound_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1282988c-36c7-7aa8-299e-c9e615efec59",
  "kind": "lemma",
  "lexical_name": "gronwallBound_mono",
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
  "slug": "gronwallbound-mono--7c3139fd53abebb586dd5a59",
  "source": {
    "blob": "7073b1f7ee031aca4bd7cd89977fdfb7bb28270b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c3139fd53abebb586dd5a593c5d2b71cc3e2ba254bec5e56d693383ba317b24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1282988c-36c7-7aa8-299e-c9e615efec59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gronwallBound_mono {δ K ε : ℝ} (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (hK : 0 ≤ K) :
    Monotone (gronwallBound δ K ε) := by
  intro x₁ x₂ hx
  unfold gronwallBound
  split_ifs with hK₀
  · gcongr
  · have hK_pos : 0 < K := by positivity
    gcongr

/-! ### Inequality and corollaries -/

/-- A Grönwall-like inequality: if `f : ℝ → ℝ` is continuous on `[a, b]` and satisfies
the inequalities `f a ≤ δ` and
`∀ x ∈ [a, b), liminf_{z→x+0} (f z - f x)/(z - x) ≤ K * (f x) + ε`, then `f x`
is bounded by `gronwallBound δ K ε (x - a)` on `[a, b]`.

See also `norm_le_gronwallBound_of_norm_deriv_right_le` for a version bounding `‖f x‖`,
`f : ℝ → E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7073b1f7ee031aca4bd7cd89977fdfb7bb28270b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
