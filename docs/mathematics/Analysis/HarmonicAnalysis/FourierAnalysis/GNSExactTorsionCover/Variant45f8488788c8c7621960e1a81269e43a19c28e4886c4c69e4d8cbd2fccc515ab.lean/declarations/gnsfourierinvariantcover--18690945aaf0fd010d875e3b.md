# GNSFourierInvariantCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac20ddb74f299f3c4ac6c19c7d23bdc5ee55ba8b9e7e311715f38dbe0770a913",
  "kind": "structure",
  "lexical_name": "GNSFourierInvariantCover",
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
  "slug": "gnsfourierinvariantcover--18690945aaf0fd010d875e3b",
  "source": {
    "blob": "16a126c0fdcfd18b7cb70433bc847b56937b98ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 57,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18690945aaf0fd010d875e3bcfe85d603e558fa1aa7e8c428e08fd386ad85552",
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

Occurrence: `declaration:ac20ddb74f299f3c4ac6c19c7d23bdc5ee55ba8b9e7e311715f38dbe0770a913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GNSFourierInvariantCover (Scalar : Type) where
  algebra : ExactTorsionStarAlgebra
  state : PositiveExactTorsionState algebra Scalar
  representation : GNSCovariantRepresentation algebra
  nullSpaceQuotiented : Bool
  hilbertCompletionTaken : Bool
  cyclicVectorConstructed : Bool
  representationConstructed : Bool
  strictPositiveMetricConstructed : Bool
  fourierInvariantState : Bool
  unitaryFourierImplementerConstructed : Bool
  covarianceAdmitted : Bool
  unconditionalHilbertPolyaClaim : Bool
  prematurePromotionRefusal :
    Think.Arithmetic.GlobalFourierMetricPositivityBoundary.RefusalMetadata
  fourierInvariantState_of_stateLaw : fourierInvariantState = true
  covarianceAdmitted_of_unitary_implementation :
    fourierInvariantState = true →
    unitaryFourierImplementerConstructed = true →
    covarianceAdmitted = true
  no_unconditional_hilbert_polya_from_gns_covariance :
    unconditionalHilbertPolyaClaim = false

namespace GNSCovariantRepresentation

variable {Alg : ExactTorsionStarAlgebra}
variable (rep : GNSCovariantRepresentation Alg)

/-- The formal covariance law: `π(F(A)) = U π(A) U^*`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a126c0fdcfd18b7cb70433bc847b56937b98ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
