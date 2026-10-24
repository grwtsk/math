# _root_.ContinuousLinearMap.WOTofCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:169f89ca4af165d70ee60344d6885ee499ba295023db536eb11a5e1cd1251088",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearMap.WOTofCLM",
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
  "slug": "root-continuouslinearmap-wotofclm--122c70a88e2c5d45771fcd7e",
  "source": {
    "blob": "2633257d7b4f13e712f9261861c86375a97a8964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 440,
    "path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:122c70a88e2c5d45771fcd7e5cce59193c3eae8f409e414723b0950efbdd1686",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:169f89ca4af165d70ee60344d6885ee499ba295023db536eb11a5e1cd1251088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearMap.WOTofCLM : (E →SL[σ] F) →L[𝕜₂] (E →SWOT[σ] F) where
  toLinearMap := linearEquiv 𝕜₂ |>.symm.toLinearMap
  cont := continuous_ofCLM

@[deprecated (since := "2026-04-10")]
alias ContinuousLinearMap.toWOTCLM := ContinuousLinearMap.WOTofCLM

end toWOT_continuous


section Comp

variable {𝕜₁ 𝕜₂ 𝕜₃ 𝕜₄ : Type*} {E F G H : Type*}
    [NormedField 𝕜₁] [NormedField 𝕜₂] [NormedField 𝕜₃] [NormedField 𝕜₄]
    {σ₁₂ : 𝕜₁ →+* 𝕜₂} {σ₁₃ : 𝕜₁ →+* 𝕜₃} {σ₁₄ : 𝕜₁ →+* 𝕜₄}
    {σ₂₃ : 𝕜₂ →+* 𝕜₃} {σ₂₄ : 𝕜₂ →+* 𝕜₄} {σ₃₄ : 𝕜₃ →+* 𝕜₄}
    [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃] [RingHomCompTriple σ₁₃ σ₃₄ σ₁₄]
    [RingHomCompTriple σ₁₂ σ₂₄ σ₁₄] [RingHomCompTriple σ₂₃ σ₃₄ σ₂₄]
    [AddCommGroup E] [TopologicalSpace E] [Module 𝕜₁ E]
    [AddCommGroup F] [TopologicalSpace F] [Module 𝕜₂ F]
    [AddCommGroup G] [TopologicalSpace G] [Module 𝕜₃ G]
    [AddCommGroup H] [TopologicalSpace H] [Module 𝕜₄ H]

variable (𝕜₂ F) in
/-- The identity as a continuous linear map on the type synonym equipped with the weak operator
topology -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2633257d7b4f13e712f9261861c86375a97a8964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
