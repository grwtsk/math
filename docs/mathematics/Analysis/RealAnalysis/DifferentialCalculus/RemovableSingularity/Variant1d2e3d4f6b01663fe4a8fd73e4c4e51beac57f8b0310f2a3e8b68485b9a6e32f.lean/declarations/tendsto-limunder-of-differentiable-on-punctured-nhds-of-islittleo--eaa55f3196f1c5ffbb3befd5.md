# tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87b921e7ce4b923cd0bc77e234d5176764ef768b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67c24c70-fbbf-b369-c98f-9b08f4ac63d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:364ece7a-76be-84b6-613a-7ff047bd4f33",
  "kind": "theorem",
  "lexical_name": "tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO",
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
  "slug": "tendsto-limunder-of-differentiable-on-punctured-nhds-of-islittleo--eaa55f3196f1c5ffbb3befd5",
  "source": {
    "blob": "87b921e7ce4b923cd0bc77e234d5176764ef768b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa55f3196f1c5ffbb3befd5ba5331018ec4a037a7fc3606cc9539d805ffeec6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:364ece7a-76be-84b6-613a-7ff047bd4f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO {f : ℂ → E} {c : ℂ}
    (hd : ∀ᶠ z in 𝓝[≠] c, DifferentiableAt ℂ f z)
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    Tendsto f (𝓝[≠] c) (𝓝 <| limUnder (𝓝[≠] c) f) := by
  rw [eventually_nhdsWithin_iff] at hd
  have : DifferentiableOn ℂ f ({z | z ≠ c → DifferentiableAt ℂ f z} \ {c}) := fun z hz =>
    (hz.1 hz.2).differentiableWithinAt
  have H := differentiableOn_update_limUnder_of_isLittleO hd this ho
  exact continuousAt_update_same.1 (H.differentiableAt hd).continuousAt
#align complex.tendsto_lim_of_differentiable_on_punctured_nhds_of_is_o Complex.tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO

/-- **Removable singularity** theorem: if a function `f : ℂ → E` is complex differentiable and
bounded on a punctured neighborhood of `c`, then `f` has a limit at `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant1d2e3d4f6b01663fe4a8fd73e4c4e51beac57f8b0310f2a3e8b68485b9a6e32f.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b921e7ce4b923cd0bc77e234d5176764ef768b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
