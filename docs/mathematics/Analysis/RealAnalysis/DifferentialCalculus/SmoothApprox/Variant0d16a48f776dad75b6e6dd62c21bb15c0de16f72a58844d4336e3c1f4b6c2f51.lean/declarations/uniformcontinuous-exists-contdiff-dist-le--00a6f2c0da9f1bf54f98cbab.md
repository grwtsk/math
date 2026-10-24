# UniformContinuous.exists_contDiff_dist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:409fd888-7ee4-b149-d0d5-082f4fb0df27",
  "kind": "theorem",
  "lexical_name": "UniformContinuous.exists_contDiff_dist_le",
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
  "slug": "uniformcontinuous-exists-contdiff-dist-le--00a6f2c0da9f1bf54f98cbab",
  "source": {
    "blob": "b11c46b86b6edf9cecce495186f53342952a594a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a6f2c0da9f1bf54f98cbab026f54eaf5bfd3452e614779a672bce1c39fec1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:409fd888-7ee4-b149-d0d5-082f4fb0df27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformContinuous.exists_contDiff_dist_le (hf : UniformContinuous f) (hε : 0 < ε) :
    ∃ g : E → F, ContDiff ℝ ∞ g ∧ ∀ a, dist (g a) (f a) < ε := by
  rcases Metric.uniformContinuous_iff.mp hf (ε / 2) (half_pos hε) with ⟨δ, hδ, hfδ⟩
  rcases hf.continuous.exists_contDiff_dist_le_of_forall_mem_ball_dist_le hδ with ⟨g, hgc, hg⟩
  exact ⟨g, hgc, fun a ↦ (hg a _ fun _ h ↦ (hfδ h).le).trans_lt (half_lt_self hε)⟩

/-- Infinitely smooth functions are dense in the space of continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant0d16a48f776dad75b6e6dd62c21bb15c0de16f72a58844d4336e3c1f4b6c2f51.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11c46b86b6edf9cecce495186f53342952a594a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
