# norm_le_gronwallBound_of_norm_deriv_right_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7129fbdd-8538-a448-fd5c-66bce3aacf5b",
  "kind": "theorem",
  "lexical_name": "norm_le_gronwallBound_of_norm_deriv_right_le",
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
  "slug": "norm-le-gronwallbound-of-norm-deriv-right-le--58ec8e1a528a5ecb8895c484",
  "source": {
    "blob": "7073b1f7ee031aca4bd7cd89977fdfb7bb28270b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ec8e1a528a5ecb8895c4847cfb60cad751f124326fb3bacdb8ec98d0671fd2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7129fbdd-8538-a448-fd5c-66bce3aacf5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_gronwallBound_of_norm_deriv_right_le {f f' : ℝ → E} {δ K ε : ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Icc a b)) (hf' : ∀ x ∈ Ico a b, HasDerivWithinAt f (f' x) (Ici x) x)
    (ha : ‖f a‖ ≤ δ) (bound : ∀ x ∈ Ico a b, ‖f' x‖ ≤ K * ‖f x‖ + ε) :
    ∀ x ∈ Icc a b, ‖f x‖ ≤ gronwallBound δ K ε (x - a) :=
  le_gronwallBound_of_liminf_deriv_right_le (continuous_norm.comp_continuousOn hf)
    (fun x hx _r hr => (hf' x hx).liminf_right_slope_norm_le hr) ha bound

/-- Let `f : [a, b] → E` be a differentiable function such that `f a = 0`
and `‖f'(x)‖ ≤ K ‖f(x)‖` for some constant `K`. Then `f = 0` on `[a, b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant6d69fac58958515ee81e8e9d6e663839a7eb76fce72677d90325b1fd81f9d05f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7073b1f7ee031aca4bd7cd89977fdfb7bb28270b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
