# _root_.GRWTSK.Analysis.FunctionalAnalysis.AdjointAux.Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3596fad7-c20a-a2ce-cdc9-9eabdea110e8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.AdjointAux.Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-adjointaux-variant21424be06a152b--07bb0778793f3cde71642c11",
  "source": {
    "blob": "f7036bb3bc5130722d7ccbf80e0224cfd0fe44d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 272,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant051af4256156f967b3ff2055a565672821e3ff09ee33fea6acc467cb1f040fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07bb0778793f3cde71642c11362f984c7c97c55d7f1dab2b21c821d0104295c4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Adjoint/Variant051af4256156f967b3ff2055a565672821e3ff09ee33fea6acc467cb1f040fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3596fad7-c20a-a2ce-cdc9-9eabdea110e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.AdjointAux.Variant21424be06a152b2060e3716a6647e108e1fd75c2c03933313d986dd915e37ade.ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric {A : E →L[𝕜] E} :
    IsSelfAdjoint A ↔ (A : E →ₗ[𝕜] E).IsSymmetric :=
  ⟨fun hA => hA.isSymmetric, fun hA =>
    ext fun x => ext_inner_right 𝕜 fun y => (A.adjoint_inner_left y x).symm ▸ (hA x y).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Adjoint/Variant051af4256156f967b3ff2055a565672821e3ff09ee33fea6acc467cb1f040fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Adjoint/Variant051af4256156f967b3ff2055a565672821e3ff09ee33fea6acc467cb1f040fc0.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7036bb3bc5130722d7ccbf80e0224cfd0fe44d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
