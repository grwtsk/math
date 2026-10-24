# admWindow_phiD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0613ba43-d3d2-4558-bbdb-f300a6ba9fa5",
  "kind": "theorem",
  "lexical_name": "admWindow_phiD",
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
  "slug": "admwindow-phid--f8bac0c71aef6fbea8d6fe90",
  "source": {
    "blob": "635b5425c81a4ca5472075c32a577868e1996b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variantb63d6fd2a25a4e02808f600395f40da8596c501bc7ad643326d59b13b822b80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8bac0c71aef6fbea8d6fe90647e0f513ab9d1d6352b4d4d90f65379bf792fc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variantb63d6fd2a25a4e02808f600395f40da8596c501bc7ad643326d59b13b822b80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0613ba43-d3d2-4558-bbdb-f300a6ba9fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admWindow_phiD (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1) (hw : 1 ≤ w)
    (hwL : 8 * w ≤ L) : AdmWindow (phiD ϱ lam L w) L w (cDT ϱ lam) where
  one_le_w := hw
  w8 := hwL
  four_le_c := four_le_cDT hϱ lam
  even := phiD_even
  nonneg := phiD_nonneg hϱ
  le_one := phiD_le_one hϱ
  contDiff := phiD_contDiff hϱ h0 h1 (by linarith) (by linarith)
  support := fun _ hu => phiD_eq_zero hϱ (by linarith) hu
  l1_deriv := integral_abs_deriv_phiD_le hϱ h0 h1 (by linarith) (by linarith)
  l1_deriv_sq := integral_abs_deriv_phiD_sq_le hϱ h0 h1 (by linarith) (by linarith)
  l1_deriv2 := integral_abs_deriv2_phiD_le hϱ h0 h1 hw hwL
  l1_deriv2_sq := integral_abs_deriv2_phiD_sq_le hϱ h0 h1 hw hwL

/-! ## Params-level wrappers (the D-analogue of `Params.localFun`) -/

/-- the Montgomery–Taylor window of the parameter set `P` at height `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variantb63d6fd2a25a4e02808f600395f40da8596c501bc7ad643326d59b13b822b80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeD/Variantb63d6fd2a25a4e02808f600395f40da8596c501bc7ad643326d59b13b822b80b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635b5425c81a4ca5472075c32a577868e1996b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
