# GNSCovariantRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0ee343e5e3b6c873873a8a80846c91cf9b9964a199cc5566322413c2a2c8209",
  "kind": "structure",
  "lexical_name": "GNSCovariantRepresentation",
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
  "slug": "gnscovariantrepresentation--6d4d0edc41cfe720965bdae6",
  "source": {
    "blob": "50ac3365ae97226e58065b5f78f9260f1f208768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d4d0edc41cfe720965bdae6ebfec3dbbdf84f46ca193396cb4431d88c124375",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0ee343e5e3b6c873873a8a80846c91cf9b9964a199cc5566322413c2a2c8209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GNSCovariantRepresentation
    (Alg : ExactTorsionStarAlgebra) where
  Operator : Type
  pi : Alg.Carrier → Operator
  compose : Operator → Operator → Operator
  adjoint : Operator → Operator
  unitaryImplementer : Operator
  unitaryImplementerIsUnitary : Bool
  covarianceLaw :
    ∀ A : Alg.Carrier,
      pi (Alg.fourier A) =
        compose (compose unitaryImplementer (pi A))
          (adjoint unitaryImplementer)

/-- Full GNS cover gate for exact-torsion Fourier covariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ac3365ae97226e58065b5f78f9260f1f208768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
