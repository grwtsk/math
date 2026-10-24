# hasIntegral_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:257fe4d2-7eba-c088-a064-8f3f6c0003cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38c2974e-be00-d3db-2e66-a6fef46a3646",
  "kind": "theorem",
  "lexical_name": "hasIntegral_congr",
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
  "slug": "hasintegral-congr--cba3f35cb4c3496802093a1b",
  "source": {
    "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba3f35cb4c3496802093a1bd8b4365eadde5b0f559a8eae3c56d5459c2d55a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38c2974e-be00-d3db-2e66-a6fef46a3646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasIntegral_congr (I : Box ι) (l : IntegrationParams) {f₁ f₂ : ℝⁿ → E}
    {vol₁ vol₂ : ι →ᵇᵃ E →L[ℝ] F}
    (hf : EqOn f₁ f₂ I.Icc) (hvol : EqOn vol₁ vol₂ (Set.Iic I)) (y : F) :
    HasIntegral I l f₁ vol₁ y ↔ HasIntegral I l f₂ vol₂ y :=
  tendsto_congr fun π ↦ integralSum_congr hf <| hvol.mono π.le_of_mem'

-- Porting note: using the above notation ℝⁿ here causes the theorem below to be silently ignored
-- see https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Lean.204.20doesn't.20add.20lemma.20to.20the.20environment/near/363764522
-- and https://github.com/leanprover/lean4/issues/2257
variable {l : IntegrationParams} {f g : (ι → ℝ) → E} {vol : ι →ᵇᵃ E →L[ℝ] F} {y y' : F}

/-- Reinterpret `BoxIntegral.HasIntegral` as `Filter.Tendsto`, e.g., dot-notation theorems
that are shadowed in the `BoxIntegral.HasIntegral` namespace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
