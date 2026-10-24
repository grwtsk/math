# GNSCovariantRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd318feba7b4fcd81c9a6ff2d9c7771736e5b43bc62d52659ad2ece7f57cf78c",
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
  "slug": "gnscovariantrepresentation--3f416187f6c488d7d6e9892b",
  "source": {
    "blob": "16a126c0fdcfd18b7cb70433bc847b56937b98ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f416187f6c488d7d6e9892b45577ed06642f36353bf80029f4d17a7aba6a936",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd318feba7b4fcd81c9a6ff2d9c7771736e5b43bc62d52659ad2ece7f57cf78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

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

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a126c0fdcfd18b7cb70433bc847b56937b98ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
