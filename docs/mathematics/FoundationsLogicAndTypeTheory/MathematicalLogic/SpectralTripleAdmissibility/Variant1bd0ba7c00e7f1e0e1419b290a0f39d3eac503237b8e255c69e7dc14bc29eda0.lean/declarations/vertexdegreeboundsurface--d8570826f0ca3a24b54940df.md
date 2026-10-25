# vertexDegreeBoundSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfa348e06fc85a476bf5c1e87b133ec2851d887d00e88c56f6f5f9a09d4de8ae",
  "kind": "def",
  "lexical_name": "vertexDegreeBoundSurface",
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
  "slug": "vertexdegreeboundsurface--d8570826f0ca3a24b54940df",
  "source": {
    "blob": "d3e4eea6f2974c5b6565124a0f38252b2849eeef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8570826f0ca3a24b54940df748e4a05f0adfc912de8ffcdb16d9bfcd0758276",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfa348e06fc85a476bf5c1e87b133ec2851d887d00e88c56f6f5f9a09d4de8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vertexDegreeBoundSurface
    (degreeIn degreeOut p omegaP logCorrection : Nat) :
    VertexDegreeBoundSurface :=
  { degreeIn := degreeIn
    degreeOut := degreeOut
    p := p
    omegaP := omegaP
    correctedBound := 16 * (1 + omegaP * logCorrection)
    oldMultiplicativeBoundRefused := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SpectralTripleAdmissibility/Variant1bd0ba7c00e7f1e0e1419b290a0f39d3eac503237b8e255c69e7dc14bc29eda0.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e4eea6f2974c5b6565124a0f38252b2849eeef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
