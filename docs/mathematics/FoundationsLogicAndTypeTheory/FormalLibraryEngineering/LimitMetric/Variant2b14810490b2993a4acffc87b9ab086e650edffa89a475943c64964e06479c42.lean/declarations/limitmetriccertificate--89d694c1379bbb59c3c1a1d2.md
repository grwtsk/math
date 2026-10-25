# LimitMetricCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f8a36ebcebbbf250b855eaef0e1944006b141786add95c778ea5fb93cef09d9",
  "kind": "structure",
  "lexical_name": "LimitMetricCertificate",
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
  "slug": "limitmetriccertificate--89d694c1379bbb59c3c1a1d2",
  "source": {
    "blob": "0629a03c554a64567ef9a0d95e926ca6ad1ee126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitMetric/Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89d694c1379bbb59c3c1a1d27c6be0fb7a98ef7f13bb9e28036bab84f8381bbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitMetric/Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f8a36ebcebbbf250b855eaef0e1944006b141786add95c778ea5fb93cef09d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitMetricCertificate (State : Type u) where
  distance : State → State → Nat
  cauchy : (Nat → State) → Prop
  converges : (Nat → State) → State → Prop
  separates :
    ∀ {left right},
      distance left right = 0 →
        left = right
  complete :
    ∀ sequence,
      cauchy sequence →
        ∃ limit,
          converges sequence limit
  summableWeightCertificateRef : String
  finiteProjectionContinuityRef : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitMetric/Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitMetric/Variant2b14810490b2993a4acffc87b9ab086e650edffa89a475943c64964e06479c42.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0629a03c554a64567ef9a0d95e926ca6ad1ee126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
