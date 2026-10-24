# ae_differentiableWithinAt_of_mem_of_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6828515e-3733-7410-2da8-1235ab3277dd",
  "kind": "theorem",
  "lexical_name": "ae_differentiableWithinAt_of_mem_of_real",
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
  "slug": "ae-differentiablewithinat-of-mem-of-real--c06e50e14bd72305123f12f5",
  "source": {
    "blob": "eefc47f46ea17a2ed77b12d9df7e92450bdf9de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 349,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06e50e14bd72305123f12f5252322461e81274712c9fbbf1d1646cd9f28f331",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6828515e-3733-7410-2da8-1235ab3277dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_differentiableWithinAt_of_mem_of_real (hf : LipschitzOnWith C f s) :
    ∀ᵐ x ∂μ, x ∈ s → DifferentiableWithinAt ℝ f s x := by
  obtain ⟨g, g_lip, hg⟩ : ∃ (g : E → ℝ), LipschitzWith C g ∧ EqOn f g s := hf.extend_real
  filter_upwards [g_lip.ae_differentiableAt_of_real] with x hx xs
  exact hx.differentiableWithinAt.congr hg (hg xs)

/-- A function on a finite-dimensional space which is Lipschitz on a set and taking values in a
product space is differentiable almost everywhere in this set. Superseded by
`LipschitzOnWith.ae_differentiableWithinAt_of_mem` which works for functions taking value in any
finite-dimensional space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefc47f46ea17a2ed77b12d9df7e92450bdf9de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
