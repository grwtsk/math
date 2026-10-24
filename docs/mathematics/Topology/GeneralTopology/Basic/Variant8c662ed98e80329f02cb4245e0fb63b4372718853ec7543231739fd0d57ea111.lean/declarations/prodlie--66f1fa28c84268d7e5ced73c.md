# prodLIE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b600262929543e85ae0a25f1434a648bf0489675d182206f00bf578fa8a6b1c",
  "kind": "def",
  "lexical_name": "prodLIE",
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
  "slug": "prodlie--66f1fa28c84268d7e5ced73c",
  "source": {
    "blob": "52e68a3388580c4af7defad23b8085005083cc20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 333,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66f1fa28c84268d7e5ced73c1a6aebee96b1eb327e599b05c7180f7e67ed4209",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b600262929543e85ae0a25f1434a648bf0489675d182206f00bf578fa8a6b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodLIE : (E [⋀^ι]→L[𝕜] F) × (E [⋀^ι]→L[𝕜] G) ≃ₗᵢ[𝕜] (E [⋀^ι]→L[𝕜] (F × G)) where
  toFun f := f.1.prod f.2
  invFun f := ((ContinuousLinearMap.fst 𝕜 F G).compContinuousAlternatingMap f,
    (ContinuousLinearMap.snd 𝕜 F G).compContinuousAlternatingMap f)
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  norm_map' f := opNorm_prod f.1 f.2

variable (𝕜 E) in
/-- `ContinuousAlternatingMap.pi` as a `LinearIsometryEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e68a3388580c4af7defad23b8085005083cc20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
