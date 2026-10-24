# geometric_hahn_banach_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c68367f5-efb9-1da8-0e22-c12e9f62daaf",
  "kind": "theorem",
  "lexical_name": "geometric_hahn_banach_open",
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
  "slug": "geometric-hahn-banach-open--1dad3e68c483a5eaf987684c",
  "source": {
    "blob": "5e38810cea58d56eba4732b2c034caeaf8250cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 253,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dad3e68c483a5eaf987684c328c5cbae6ca7c10b84fce767385e28bc88c9b0f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c68367f5-efb9-1da8-0e22-c12e9f62daaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_hahn_banach_open (hs₁ : Convex ℝ s) (hs₂ : IsOpen s) (ht : Convex ℝ t)
    (disj : Disjoint s t) : ∃ (f : E →L[𝕜] 𝕜) (u : ℝ), (∀ a ∈ s, re (f a) < u) ∧
    ∀ b ∈ t, u ≤ re (f b) := by
  have := IsScalarTower.continuousSMul (M := ℝ) (α := E) 𝕜
  obtain ⟨f, u, h⟩ := _root_.GRWTSK.Analysis.FunctionalAnalysis.SeparateConvexOpenSet.Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.geometric_hahn_banach_open hs₁ hs₂ ht disj
  use extendTo𝕜'ₗ f
  simp only [re_extendTo𝕜'ₗ]
  exact Exists.intro u h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e38810cea58d56eba4732b2c034caeaf8250cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
