# banach_steinhaus_iSup_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f91a44-7dcb-6cb5-9dbb-46b3cd07a4af",
  "kind": "theorem",
  "lexical_name": "banach_steinhaus_iSup_nnnorm",
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
  "slug": "banach-steinhaus-isup-nnnorm--d9c20da5344686983c8f16fa",
  "source": {
    "blob": "5e047a4e078270c518b2c1d1e2da5c8ec733cfc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 54,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c20da5344686983c8f16fa3c9852b2c5575bef0cdf9bcc7c498af20ce7242e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f91a44-7dcb-6cb5-9dbb-46b3cd07a4af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem banach_steinhaus_iSup_nnnorm {ι : Type*} [CompleteSpace E] {g : ι → E →SL[σ₁₂] F}
    (h : ∀ x, (⨆ i, ↑‖g i x‖₊) < ∞) : (⨆ i, ↑‖g i‖₊) < ∞ := by
  rw [show ((⨆ i, ↑‖g i‖₊) < ∞) ↔ _ from (NormedSpace.equicontinuous_TFAE g).out 8 2]
  refine (norm_withSeminorms 𝕜₂ F).banach_steinhaus (fun _ x ↦ ?_)
  simpa [← NNReal.bddAbove_coe, ← Set.range_comp] using
    (WithTop.iSup_coe_lt_top (fun i ↦ ‖g i x‖₊)).mp (h x)
#align banach_steinhaus_supr_nnnorm banach_steinhaus_iSup_nnnorm

open Topology

open Filter

/-- Given a *sequence* of continuous linear maps which converges pointwise and for which the
domain is complete, the Banach-Steinhaus theorem is used to guarantee that the limit map
is a *continuous* linear map as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSteinhaus/Varianta9f574c28e7de9e8e528e5bcc41889f91fedb48b796e9a553904b56359de2f36.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e047a4e078270c518b2c1d1e2da5c8ec733cfc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
