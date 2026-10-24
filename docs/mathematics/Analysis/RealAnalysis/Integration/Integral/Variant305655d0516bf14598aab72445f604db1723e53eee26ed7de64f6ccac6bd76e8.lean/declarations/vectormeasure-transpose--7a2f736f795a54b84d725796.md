# VectorMeasure.transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f294fd7d6167bd30e4a82f5fe648cd8f754b3d4898cf53efa4f816701c6b0f74",
  "kind": "def",
  "lexical_name": "VectorMeasure.transpose",
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
  "slug": "vectormeasure-transpose--7a2f736f795a54b84d725796",
  "source": {
    "blob": "2778d9f04898192a5157ca56196c44375c8de318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a2f736f795a54b84d725796697eb2b0f9116ffed56e03e95de7f41ffb8b91bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f294fd7d6167bd30e4a82f5fe648cd8f754b3d4898cf53efa4f816701c6b0f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def VectorMeasure.transpose (μ : VectorMeasure X F) (B : E →L[ℝ] F →L[ℝ] G) :
    VectorMeasure X (E →L[ℝ] G) := μ.mapRange B.flip.toAddMonoidHom B.flip.continuous

/-- Given a set `s`, return the continuous linear map `fun x : E ↦ B x (μ s)` (actually defined
using `transpose` through `mapRange`), where the `B` is a `G`-valued bilinear form on `E × F` and
`μ` is an `F`-valued vector measure. The extension of that set function through `setToFun` gives the
pairing integral of `E`-valued integrable functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2778d9f04898192a5157ca56196c44375c8de318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
