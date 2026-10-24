# _root_.GRWTSK.Analysis.FunctionalAnalysis.InnerDef.Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.LinearIsometryEquiv.lTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad1282fe7069bc319c2e3caec9b6d4289297c3e268090598fa4935e63159f88",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.FunctionalAnalysis.InnerDef.Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.LinearIsometryEquiv.lTensor",
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
  "slug": "root-grwtsk-analysis-functionalanalysis-innerdef-variantdaf564377e65fd0e--e6209b9cb37cb2172552aa61",
  "source": {
    "blob": "17f075855009ed0bf9e9d2410af4603666bebdf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 297,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6209b9cb37cb2172552aa61d48278fd9b8f8658fb44461234173cfad66f1713",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad1282fe7069bc319c2e3caec9b6d4289297c3e268090598fa4935e63159f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Analysis.FunctionalAnalysis.InnerDef.Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.LinearIsometryEquiv.lTensor (f : F ≃ₗᵢ[𝕜] G) :
    E ⊗[𝕜] F ≃ₗᵢ[𝕜] E ⊗[𝕜] G := congrIsometry (.refl 𝕜 E) f

variable (G) in
/-- This is the natural linear isometric equivalence induced by `f : E ≃ₗᵢ F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f075855009ed0bf9e9d2410af4603666bebdf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
