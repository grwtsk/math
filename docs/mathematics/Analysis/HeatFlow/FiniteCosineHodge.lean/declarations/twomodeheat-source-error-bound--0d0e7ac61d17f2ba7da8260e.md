# twoModeHeat_source_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba4af61-5b9c-e234-45f3-d62cd5de8b0c",
  "kind": "theorem",
  "lexical_name": "twoModeHeat_source_error_bound",
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
  "slug": "twomodeheat-source-error-bound--0d0e7ac61d17f2ba7da8260e",
  "source": {
    "blob": "9f0c632413378e72cc78f91f0809a45b104e0740",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d0e7ac61d17f2ba7da8260e3e3b9e628394d8c7d50e457c200ea0c2d3150abc",
  "verification": {
    "reference": "docs/verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba4af61-5b9c-e234-45f3-d62cd5de8b0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoModeHeat_source_error_bound
    (a b a' b' s u v z e₁ e₂ : ℝ)
    (h₁ : |(a - a') * modeHeat s u * Real.cos (z * u)| ≤ e₁)
    (h₂ : |(b - b') * modeHeat s v * Real.cos (z * v)| ≤ e₂) :
    |twoModeHeat a b s u v z - twoModeHeat a' b' s u v z| ≤ e₁ + e₂ := by
  rw [twoModeHeat_source_error]
  exact (abs_add_le _ _).trans (add_le_add h₁ h₂)


/-- Exact source identity: unlike the earlier supplied-identity wrapper, this
theorem derives the coefficient readout directly from the definitions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0c632413378e72cc78f91f0809a45b104e0740` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
