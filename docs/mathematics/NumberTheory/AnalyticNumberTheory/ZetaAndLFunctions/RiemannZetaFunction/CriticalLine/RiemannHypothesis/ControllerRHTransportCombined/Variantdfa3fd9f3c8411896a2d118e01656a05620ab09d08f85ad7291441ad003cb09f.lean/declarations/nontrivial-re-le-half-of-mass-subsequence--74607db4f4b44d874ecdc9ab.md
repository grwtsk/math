# nontrivial_re_le_half_of_mass_subsequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:776ca2f9-dadf-0c47-4c63-6627ef792c0e",
  "kind": "theorem",
  "lexical_name": "nontrivial_re_le_half_of_mass_subsequence",
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
  "slug": "nontrivial-re-le-half-of-mass-subsequence--74607db4f4b44d874ecdc9ab",
  "source": {
    "blob": "81aeb8e6f4fd6b9a6cd7ccf0dc1c031c93f47632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variantdfa3fd9f3c8411896a2d118e01656a05620ab09d08f85ad7291441ad003cb09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74607db4f4b44d874ecdc9ab2d3ab84f5f1684a712d3a39523bb4e581801ad2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variantdfa3fd9f3c8411896a2d118e01656a05620ab09d08f85ad7291441ad003cb09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:776ca2f9-dadf-0c47-4c63-6627ef792c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_re_le_half_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 := by
  by_contra hn
  obtain ⟨c, hc, hfloor⟩ := nontrivial_sourceMass_uniform_positive_floor ρ hρ
    (lt_of_not_ge hn)
  have hle : c ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hmass (by
    filter_upwards [eventually_ge_atTop 1] with j hj
    exact hfloor (α j) (hα j hj))
  exact (not_le_of_gt hc) hle

/-- Functional-equation reflection rules out left zeros while retaining all original exclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variantdfa3fd9f3c8411896a2d118e01656a05620ab09d08f85ad7291441ad003cb09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRHTransportCombined/Variantdfa3fd9f3c8411896a2d118e01656a05620ab09d08f85ad7291441ad003cb09f.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81aeb8e6f4fd6b9a6cd7ccf0dc1c031c93f47632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
