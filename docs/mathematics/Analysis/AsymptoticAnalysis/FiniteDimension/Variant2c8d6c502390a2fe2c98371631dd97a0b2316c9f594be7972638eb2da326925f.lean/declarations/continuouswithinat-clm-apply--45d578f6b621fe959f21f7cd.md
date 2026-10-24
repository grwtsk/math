# continuousWithinAt_clm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7acfd4dbd8e38944b0e6b935086dda443187b532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8ebffb4-2128-4295-6ac2-911c58a69c18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47e3cfe3-f4a3-4067-f9e8-73182a44cdb3",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_clm_apply",
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
  "slug": "continuouswithinat-clm-apply--45d578f6b621fe959f21f7cd",
  "source": {
    "blob": "7acfd4dbd8e38944b0e6b935086dda443187b532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 510,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45d578f6b621fe959f21f7cd7609dbbdfcfe03fa6830196d95e3c5aed99a60ad",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e3cfe3-f4a3-4067-f9e8-73182a44cdb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_clm_apply {X : Type*} [TopologicalSpace X] [FiniteDimensional 𝕜 E]
    {f : X → E →L[𝕜] F} {s : Set X} {x : X} :
    ContinuousWithinAt f s x ↔ ∀ y, ContinuousWithinAt (fun q ↦ f q y) s x := by
  refine ⟨fun h y ↦ (apply 𝕜 F y).continuous.continuousAt.comp_continuousWithinAt h, fun h ↦ ?_⟩
  let e : (E →L[𝕜] F) ≃L[𝕜] Fin (finrank 𝕜 E) → F :=
    ((ContinuousLinearEquiv.ofFinrankEq (finrank_fin_fun 𝕜).symm).arrowCongr
      (1 : F ≃L[𝕜] F)).trans (ContinuousLinearEquiv.piRing _)
  rw [e.toHomeomorph.isInducing.continuousWithinAt_iff]
  exact continuousWithinAt_pi.mpr fun i ↦ h _

/-- A family of continuous linear maps is continuous on `s` iff all its applications are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acfd4dbd8e38944b0e6b935086dda443187b532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
