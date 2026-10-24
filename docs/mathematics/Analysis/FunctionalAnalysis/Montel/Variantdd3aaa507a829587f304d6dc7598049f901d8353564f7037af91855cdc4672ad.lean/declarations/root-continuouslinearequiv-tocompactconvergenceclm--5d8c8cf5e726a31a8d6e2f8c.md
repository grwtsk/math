# _root_.ContinuousLinearEquiv.toCompactConvergenceCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65784fbc1504f04f8dbe026dba91ebbc8ec2048db8e633747e1d1f6298d31030",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearEquiv.toCompactConvergenceCLM",
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
  "slug": "root-continuouslinearequiv-tocompactconvergenceclm--5d8c8cf5e726a31a8d6e2f8c",
  "source": {
    "blob": "63057d31788d63357e6055207d6f0a1175097943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Montel/Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d8c8cf5e726a31a8d6e2f8c5145d72adf9116c1c0fdb26d5b9c077fd19fd271",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Montel/Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65784fbc1504f04f8dbe026dba91ebbc8ec2048db8e633747e1d1f6298d31030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearEquiv.toCompactConvergenceCLM [T1Space E] [MontelSpace 𝕜₁ E] :
    (E →SL[σ] F) ≃L[𝕜₂] E →SL_c[σ] F where
  __ := LinearEquiv.toCompactConvergenceCLM σ E F
  continuous_toFun := by
    simp only [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom, LinearEquiv.coe_coe, continuous_def]
    intro s hs
    apply hs.mono
    apply UniformConvergenceCLM.topologicalSpace_mono
    intro x hx
    exact hx.isVonNBounded 𝕜₁
  continuous_invFun := by
    apply continuous_of_continuousAt_zero (LinearEquiv.toCompactConvergenceCLM σ E F).symm
    rw [ContinuousAt, _root_.map_zero, CompactConvergenceCLM.hasBasis_nhds_zero.tendsto_iff
      ContinuousLinearMap.hasBasis_nhds_zero]
    rintro ⟨a, b⟩ ⟨ha, hb⟩
    use ⟨closure a, b⟩
    exact ⟨⟨MontelSpace.isCompact_of_isClosed_of_isVonNBounded 𝕜₁ isClosed_closure
      ha.closure, hb⟩, fun _ hf _ hx ↦ hf _ (subset_closure hx)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Montel/Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Montel/Variantdd3aaa507a829587f304d6dc7598049f901d8353564f7037af91855cdc4672ad.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63057d31788d63357e6055207d6f0a1175097943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
