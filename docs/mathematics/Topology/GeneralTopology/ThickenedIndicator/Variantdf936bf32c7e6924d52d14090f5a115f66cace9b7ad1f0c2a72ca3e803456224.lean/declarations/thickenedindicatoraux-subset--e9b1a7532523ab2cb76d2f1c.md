# thickenedIndicatorAux_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4639691-295a-e10d-ef58-a6067162ea05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05948e6a-240f-c372-19ff-ad3f0c96040c",
  "kind": "theorem",
  "lexical_name": "thickenedIndicatorAux_subset",
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
  "slug": "thickenedindicatoraux-subset--e9b1a7532523ab2cb76d2f1c",
  "source": {
    "blob": "4820d1b3b9a9c571b9a01efeb02aad32f60e0978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b1a7532523ab2cb76d2f1cbf26555058f948273879bb63062edaf807305326",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05948e6a-240f-c372-19ff-ad3f0c96040c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thickenedIndicatorAux_subset (δ : ℝ) {E₁ E₂ : Set α} (subset : E₁ ⊆ E₂) :
    thickenedIndicatorAux δ E₁ ≤ thickenedIndicatorAux δ E₂ :=
  fun _ => tsub_le_tsub (@rfl ℝ≥0∞ 1).le (ENNReal.div_le_div (infEdist_anti subset) rfl.le)
#align thickened_indicator_aux_subset thickenedIndicatorAux_subset

/-- As the thickening radius δ tends to 0, the δ-thickened indicator of a set E (in α) tends
pointwise (i.e., w.r.t. the product topology on `α → ℝ≥0∞`) to the indicator function of the
closure of E.

This statement is for the unbundled `ℝ≥0∞`-valued functions `thickenedIndicatorAux δ E`, see
`thickenedIndicator_tendsto_indicator_closure` for the version for bundled `ℝ≥0`-valued
bounded continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantdf936bf32c7e6924d52d14090f5a115f66cace9b7ad1f0c2a72ca3e803456224.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4820d1b3b9a9c571b9a01efeb02aad32f60e0978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
