# AnalyticOn.is_constant_or_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:462f01e3-8b3c-3787-1c71-d31dc032d386",
  "kind": "theorem",
  "lexical_name": "AnalyticOn.is_constant_or_isOpen",
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
  "slug": "analyticon-is-constant-or-isopen--8da480218bc952f752477305",
  "source": {
    "blob": "9c4efc04a267b59907f27d26785712b34b465e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 171,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da480218bc952f752477305fb50e89961215c3e3e58a57582bb9c148740e302",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:462f01e3-8b3c-3787-1c71-d31dc032d386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOn.is_constant_or_isOpen (hg : AnalyticOn ℂ g U) (hU : IsPreconnected U) :
    (∃ w, ∀ z ∈ U, g z = w) ∨ ∀ (s) (_ : s ⊆ U), IsOpen s → IsOpen (g '' s) := by
  by_cases ∃ z₀ ∈ U, ∀ᶠ z in 𝓝 z₀, g z = g z₀
  · obtain ⟨z₀, hz₀, h⟩ := h
    exact Or.inl ⟨g z₀, hg.eqOn_of_preconnected_of_eventuallyEq analyticOn_const hU hz₀ h⟩
  · push_neg at h
    refine Or.inr fun s hs1 hs2 => isOpen_iff_mem_nhds.mpr ?_
    rintro z ⟨w, hw1, rfl⟩
    exact (hg w (hs1 hw1)).eventually_constant_or_nhds_le_map_nhds.resolve_left (h w (hs1 hw1))
        (image_mem_map (hs2.mem_nhds hw1))
#align analytic_on.is_constant_or_is_open AnalyticOn.is_constant_or_isOpen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4efc04a267b59907f27d26785712b34b465e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
