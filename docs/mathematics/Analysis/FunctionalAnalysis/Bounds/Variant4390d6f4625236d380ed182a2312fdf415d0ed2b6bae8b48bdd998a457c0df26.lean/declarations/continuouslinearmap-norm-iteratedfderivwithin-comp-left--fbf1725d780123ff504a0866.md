# ContinuousLinearMap.norm_iteratedFDerivWithin_comp_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93cabdd3-1ebd-1811-3577-470d8b2fe217",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.norm_iteratedFDerivWithin_comp_left",
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
  "slug": "continuouslinearmap-norm-iteratedfderivwithin-comp-left--fbf1725d780123ff504a0866",
  "source": {
    "blob": "a503d47c2335fc0583a9aa26d256e96bedf21182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 552,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf1725d780123ff504a08666a1fc9106f6ae65196978a5d048283a6e94f67f0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93cabdd3-1ebd-1811-3577-470d8b2fe217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.norm_iteratedFDerivWithin_comp_left (L : F →L[𝕜] G) {f : E → F}
    {s : Set E} {x : E} {N : ℕ∞ω} {n : ℕ} (hf : ContDiffWithinAt 𝕜 N f s x)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hn : n ≤ N) :
    ‖iteratedFDerivWithin 𝕜 n (L ∘ f) s x‖ ≤ ‖L‖ * ‖iteratedFDerivWithin 𝕜 n f s x‖ := by
  have h := L.norm_compContinuousMultilinearMap_le (iteratedFDerivWithin 𝕜 n f s x)
  rwa [← L.iteratedFDerivWithin_comp_left hf hs hx hn] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a503d47c2335fc0583a9aa26d256e96bedf21182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
