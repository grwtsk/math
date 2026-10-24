# second_derivative_symmetric_of_eventually_of_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40683784-965e-32e5-c754-ebd37d6cc9f8",
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
  "slug": "second-derivative-symmetric-of-eventually-of-real--e1df74a9e1273c1c597a3dde",
  "source": {
    "blob": "0ffa96c5444b290667206d339dda1cfa7a22d25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 426,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1df74a9e1273c1c597a3dde83321731f2a879c614d08d036725b0202168cc0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40683784-965e-32e5-c754-ebd37d6cc9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–443.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffa96c5444b290667206d339dda1cfa7a22d25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
