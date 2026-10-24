# Filter.Tendsto.cfcₙ_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1015,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f35fbd1-be17-eece-87af-1760e6e44122",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93847ea8-fbdc-b5b8-0511-24a1c363aedb",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.cfcₙ_nnreal",
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
  "slug": "filter-tendsto-cfc-nnreal--ce1f7f2187c32e8d5d4c7e22",
  "source": {
    "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1027,
    "line": 1015,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1f7f2187c32e8d5d4c7e2246dc2ae4712313d97b743a6de53152dd8d64480d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93847ea8-fbdc-b5b8-0511-24a1c363aedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1015–1027.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.cfcₙ_nnreal {s : Set ℝ≥0} (hs : IsCompact s) (f : ℝ≥0 → ℝ≥0)
    {a : X → A} {a₀ : A} {l : Filter X} (ha_tendsto : Tendsto a l (𝓝 a₀))
    (ha : ∀ᶠ x in l, quasispectrum ℝ≥0 (a x) ⊆ s) (ha' : ∀ᶠ x in l, 0 ≤ a x)
    (ha₀ : quasispectrum ℝ≥0 a₀ ⊆ s) (ha₀' : 0 ≤ a₀) (hf : ContinuousOn f s := by cfc_cont_tac)
    (hf0 : f 0 = 0 := by cfc_zero_tac) :
    Tendsto (fun x ↦ cfcₙ f (a x)) l (𝓝 (cfcₙ f a₀)) := by
  apply continuousOn_cfcₙ_nnreal A hs f |>.continuousWithinAt ⟨ha₀', ha₀⟩ |>.tendsto.comp
  rw [tendsto_nhdsWithin_iff]
  exact ⟨ha_tendsto, ha'.and ha⟩

/-- If `f : ℝ≥0 → ℝ≥0` is continuous on a compact set `s` and `f 0 = 0` and `a : X → A` is
continuous at `x₀`, and eventually `0 ≤ a x` and has quasispectrum contained in `s`, then
`fun x ↦ cfcₙ f (a x)` is continuous at `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean#L1015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cd53bc76622f44aed7e388806ac3e32f701e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
