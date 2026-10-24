# AdmissibleBanachRotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a01c1de83cc7d2c3c4ba1cbad14aa031f6b0301c71aff85a59f7f54b0d54f351",
  "kind": "structure",
  "lexical_name": "AdmissibleBanachRotation",
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
  "slug": "admissiblebanachrotation--8733029dc2a6435aaa9af3de",
  "source": {
    "blob": "2f9dd94379848ec7d1303ba9bc966d2e6f9297d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 28,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7628ff97b0c3fff9/Variantb359ecf0c254c809e2620b71a4103cc8af5c10230e9c683347338c2c37aa5fbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8733029dc2a6435aaa9af3de386b51d70c2a202206e375f9bef6fb5e8791a010",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7628ff97b0c3fff9/Variantb359ecf0c254c809e2620b71a4103cc8af5c10230e9c683347338c2c37aa5fbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a01c1de83cc7d2c3c4ba1cbad14aa031f6b0301c71aff85a59f7f54b0d54f351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmissibleBanachRotation (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  turn : ZMod n
  center : B
  axes : Fin n → B
  axesIndependent : LinearIndependent ℝ axes
  isometry : B ≃ₗᵢ[ℝ] B
  fixesCenter : isometry center = center
  rotatesAxes :
    ∀ i, isometry (axes i) = axes (cyclicCoordinateEquiv turn i)
  weights : Fin n → ℝ
  weightsPositive : ∀ i, 0 < weights i
  weightsInvariant :
    ∀ i, weights (cyclicCoordinateEquiv turn i) = weights i

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7628ff97b0c3fff9/Variantb359ecf0c254c809e2620b71a4103cc8af5c10230e9c683347338c2c37aa5fbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/A7628ff97b0c3fff9/Variantb359ecf0c254c809e2620b71a4103cc8af5c10230e9c683347338c2c37aa5fbd.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f9dd94379848ec7d1303ba9bc966d2e6f9297d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
