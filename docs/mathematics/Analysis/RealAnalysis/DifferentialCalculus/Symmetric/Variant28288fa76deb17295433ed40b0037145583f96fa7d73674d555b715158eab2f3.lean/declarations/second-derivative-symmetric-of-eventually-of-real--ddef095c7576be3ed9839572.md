# second_derivative_symmetric_of_eventually_of_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e50f5d5e-3aa2-0463-ed3e-c1ffafa8af08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:419e0728-1b90-3096-c832-4325362713ea",
  "kind": "theorem",
  "lexical_name": "second_derivative_symmetric_of_eventually_of_real",
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
  "slug": "second-derivative-symmetric-of-eventually-of-real--ddef095c7576be3ed9839572",
  "source": {
    "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 446,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddef095c7576be3ed98395727cd7683ad1682db4ba340001a8d17a3003c40691",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419e0728-1b90-3096-c832-4325362713ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_derivative_symmetric_of_eventually_of_real {f : E → F} {f' : E → E →L[ℝ] F}
    {f'' : E →L[ℝ] E →L[ℝ] F} (hf : ∀ᶠ y in 𝓝 x, HasFDerivAt f (f' y) y) (hx : HasFDerivAt f' f'' x)
    (v w : E) : f'' v w = f'' w v := by
  rcases Metric.mem_nhds_iff.1 hf with ⟨ε, εpos, hε⟩
  have A : (interior (Metric.ball x ε)).Nonempty := by
    rwa [Metric.isOpen_ball.interior_eq, Metric.nonempty_ball]
  exact
    Convex.second_derivative_within_at_symmetric (convex_ball x ε) A
      (fun y hy => hε (interior_subset hy)) (Metric.mem_ball_self εpos) hx.hasFDerivWithinAt v w

end Real

section IsRCLikeNormedField

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [NormedAddCommGroup F]
  [NormedSpace 𝕜 F] {s : Set E} {f : E → F} {x : E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efcc2b74466cfd3603f72cf3d5216b86825713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
