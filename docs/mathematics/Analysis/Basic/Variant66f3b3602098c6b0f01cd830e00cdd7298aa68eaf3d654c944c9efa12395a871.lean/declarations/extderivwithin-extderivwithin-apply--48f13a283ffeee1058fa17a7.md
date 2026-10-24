# extDerivWithin_extDerivWithin_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6d85034-9f1c-e776-1407-830d1ab8fe88",
  "kind": "theorem",
  "lexical_name": "extDerivWithin_extDerivWithin_apply",
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
  "slug": "extderivwithin-extderivwithin-apply--48f13a283ffeee1058fa17a7",
  "source": {
    "blob": "7300465a16327cc540fe33a4a064c58cbc074888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f13a283ffeee1058fa17a7fb58dc8fdd7224494cda19764e95ace39bfabbc0",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d85034-9f1c-e776-1407-830d1ab8fe88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extDerivWithin_extDerivWithin_apply (hω : ContDiffWithinAt 𝕜 r ω s x)
    (hr : minSmoothness 𝕜 2 ≤ r) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ closure (interior s))
    (h'x : x ∈ s) : extDerivWithin (extDerivWithin ω s) s x = 0 := calc
  extDerivWithin (extDerivWithin ω s) s x
    = alternatizeUncurryFin (fderivWithin 𝕜 (fun y ↦
        alternatizeUncurryFin (fderivWithin 𝕜 ω s y)) s x) := rfl
  _ = alternatizeUncurryFin (alternatizeUncurryFinCLM _ _ _ ∘L
        fderivWithin 𝕜 (fderivWithin 𝕜 ω s) s x) := by
    congr 1
    have : DifferentiableWithinAt 𝕜 (fderivWithin 𝕜 ω s) s x := by
      refine (hω.fderivWithin_right hs ?_ h'x).differentiableWithinAt one_ne_zero
      exact le_minSmoothness.trans hr
    exact alternatizeUncurryFinCLM _ _ _ |>.hasFDerivAt.comp_hasFDerivWithinAt x
      this.hasFDerivWithinAt |>.fderivWithin (hs.uniqueDiffWithinAt h'x)
  _ = 0 := alternatizeUncurryFin_alternatizeUncurryFinCLM_comp_of_symmetric <|
    hω.isSymmSndFDerivWithinAt hr hs hx h'x

/-- The second exterior derivative of a sufficiently smooth differential form is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7300465a16327cc540fe33a4a064c58cbc074888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
