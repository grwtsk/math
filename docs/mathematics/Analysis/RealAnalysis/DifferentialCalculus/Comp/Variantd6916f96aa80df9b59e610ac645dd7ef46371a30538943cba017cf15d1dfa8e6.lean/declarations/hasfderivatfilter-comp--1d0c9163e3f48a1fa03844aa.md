# HasFDerivAtFilter.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65b11dca-14e5-6817-3469-e9d7af661f83",
  "kind": "theorem",
  "lexical_name": "HasFDerivAtFilter.comp",
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
  "slug": "hasfderivatfilter-comp--1d0c9163e3f48a1fa03844aa",
  "source": {
    "blob": "9fda5a5e7208c57bfed131ef6284e05037c2d53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d0c9163e3f48a1fa03844aa222c857f561f8a728874b9f59209b395036357c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b11dca-14e5-6817-3469-e9d7af661f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAtFilter.comp {g : F → G} {g' : F →L[𝕜] G} {L' : Filter (F × F)}
    (hg : HasFDerivAtFilter g g' L') (hf : HasFDerivAtFilter f f' L)
    (hL : Tendsto (Prod.map f f) L L') :
    HasFDerivAtFilter (g ∘ f) (g' ∘L f') L := by
  -- This proof can be golfed a lot. However, it should be left this way for readability.
  refine .of_isLittleOTVS <| calc
    (fun p ↦ (g ∘ f) p.1 - (g ∘ f) p.2 - (g' ∘L f') (p.1 - p.2))
      = fun p ↦ (g (f p.1) - g (f p.2) - g' (f p.1 - f p.2)) +
          g' (f p.1 - f p.2 - f' (p.1 - p.2)) := by
      ext; simp
    _ =o[𝕜; L] (fun p ↦ p.1 - p.2) := .add ?Hg ?Hf
  case Hg => calc (fun p ↦ g (f p.1) - g (f p.2) - g' (f p.1 - f p.2))
    _ =o[𝕜; L] (fun p ↦ f p.1 - f p.2) :=
      hg.isLittleOTVS.comp_tendsto hL
    _ =O[𝕜; L] (fun p ↦ p.1 - p.2) := hf.isBigOTVS_sub
  case Hf => calc (fun p ↦ g' (f p.1 - f p.2 - f' (p.1 - p.2)))
    _ =O[𝕜; L] (fun p ↦ f p.1 - f p.2 - f' (p.1 - p.2)) := g'.isBigOTVS_comp
    _ =o[𝕜; L] (fun p ↦ p.1 - p.2) := hf.isLittleOTVS

/-- The chain rule for derivatives in the sense of strict differentiability. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fda5a5e7208c57bfed131ef6284e05037c2d53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
