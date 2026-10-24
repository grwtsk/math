# nativeLogDensityFunctional_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65ed9889-1b32-2350-9700-80eccad8d839",
  "kind": "theorem",
  "lexical_name": "nativeLogDensityFunctional_eq_some_iff",
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
  "slug": "nativelogdensityfunctional-eq-some-iff--3630d6d12f098b28ea181ac7",
  "source": {
    "blob": "4b1c123bff2d7859c4ef6aef166df2bc28c7c475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 238,
    "path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3630d6d12f098b28ea181ac714dec6c5acd35634618ac8dd8db57c2571dcef2f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65ed9889-1b32-2350-9700-80eccad8d839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeLogDensityFunctional_eq_some_iff
    (S : Set ℕ) (density : ℝ) :
    HasAbstractLogDensity nativeLogDensityFunctional S density ↔
      HasHarmonicDensity S density := by
  classical
  change (if h : ∃ value : ℝ, HasHarmonicDensity S value then
      some (Classical.choose h) else none) = some density ↔
    HasHarmonicDensity S density
  split_ifs with h
  · constructor
    · intro heq
      have hchosen : Classical.choose h = density := Option.some.inj heq
      rw [← hchosen]
      exact Classical.choose_spec h
    · intro hdensity
      have hchosen : Classical.choose h = density :=
        tendsto_nhds_unique (Classical.choose_spec h) hdensity
      simp [hchosen]
  · constructor
    · simp
    · intro hdensity
      exact False.elim (h ⟨density, hdensity⟩)

/-- Abstract bias under the native functional is equivalent to the concrete
harmonic-limit bias; no analytic existence claim is added by the bridge. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1c123bff2d7859c4ef6aef166df2bc28c7c475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
