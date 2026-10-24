# ae_tendsto_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:634b65b8-42b8-a8f4-656b-4933287f622d",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_average",
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
  "slug": "ae-tendsto-average--258536c406e038f175ae8091",
  "source": {
    "blob": "fdf41eeb408b3ab40d6ebbb34f32fb81b0865918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant83ae4915b785ee79770a3e7f5adb27b4c4295d4aaff91bb90e3b9ae4fbda080e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258536c406e038f175ae8091746370da2b48c9855f907f0441005166b362188c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DensityTheorem/Variant83ae4915b785ee79770a3e7f5adb27b4c4295d4aaff91bb90e3b9ae4fbda080e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:634b65b8-42b8-a8f4-656b-4933287f622d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_average [NormedSpace ℝ E] [CompleteSpace E]
    {f : α → E} (hf : LocallyIntegrable f μ) (K : ℝ) : ∀ᵐ x ∂μ,
      ∀ {ι : Type*} {l : Filter ι} (w : ι → α) (δ : ι → ℝ) (_ : Tendsto δ l (𝓝[>] 0))
        (_ : ∀ᶠ j in l, x ∈ closedBall (w j) (K * δ j)),
        Tendsto (fun j => ⨍ y in closedBall (w j) (δ j), f y ∂μ) l (𝓝 (f x)) := by
  filter_upwards [(vitaliFamily μ K).ae_tendsto_average hf] with x hx ι l w δ δlim xmem using
    hx.comp (tendsto_closedBall_filterAt μ _ _ δlim xmem)

end Applications

end IsUnifLocDoublingMeasure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DensityTheorem/Variant83ae4915b785ee79770a3e7f5adb27b4c4295d4aaff91bb90e3b9ae4fbda080e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant83ae4915b785ee79770a3e7f5adb27b4c4295d4aaff91bb90e3b9ae4fbda080e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf41eeb408b3ab40d6ebbb34f32fb81b0865918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
