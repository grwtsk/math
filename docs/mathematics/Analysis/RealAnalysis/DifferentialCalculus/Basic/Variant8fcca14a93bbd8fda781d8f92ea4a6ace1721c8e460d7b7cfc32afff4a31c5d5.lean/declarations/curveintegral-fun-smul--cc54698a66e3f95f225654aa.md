# curveIntegral_fun_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:997e5470-ddec-a1a9-ae96-144301d23f79",
  "kind": "theorem",
  "lexical_name": "curveIntegral_fun_smul",
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
  "slug": "curveintegral-fun-smul--cc54698a66e3f95f225654aa",
  "source": {
    "blob": "4aed310ab03c116d9bcf1e5d107ea9c524cca901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 489,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc54698a66e3f95f225654aa7c5a10ac97f2b07442a6f8b94596f36a35d1915c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:997e5470-ddec-a1a9-ae96-144301d23f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegral_fun_smul : ∫ᶜ x in γ, c • ω x = c • ∫ᶜ x in γ, ω x := curveIntegral_smul

end Algebra

section FDeriv

variable {𝕜 E F : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedSpace 𝕜 E]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F] [CompleteSpace F]
  {a b : E} {s : Set E} {ω : E → E →L[𝕜] F}

/-!
### Derivative of the curve integral w.r.t. the right endpoint

In this section we prove that the integral of `ω` along `[a -[ℝ] b]`, as a function of `b`,
has derivative `ω a` at `b = a`.
We provide several versions of this theorem, for `HasFDerivWithinAt` and `HasFDerivAt`,
as well as for continuity near a point and for continuity on the whole set or space.

Note that we take the derivative at the left endpoint of the segment.
Similar facts about the derivative at a different point are true
provided that `ω` is a closed 1-form (formalization WIP, see #24019).
-/

/-- The integral of `ω` along `[a -[ℝ] b]`, as a function of `b`, has derivative `ω a` at `b = a`.
This is a `HasFDerivWithinAt` version assuming that `ω` is continuous within a convex set `s`
in a neighborhood of `a` within `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed310ab03c116d9bcf1e5d107ea9c524cca901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
