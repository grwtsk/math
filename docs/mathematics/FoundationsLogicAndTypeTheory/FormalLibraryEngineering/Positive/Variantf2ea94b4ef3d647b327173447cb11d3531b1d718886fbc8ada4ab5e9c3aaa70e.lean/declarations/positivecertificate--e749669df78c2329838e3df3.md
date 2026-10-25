# PositiveCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e25ff389b93102e201a1da2299101c38d602716c44fe0504c390561f69228bec",
  "kind": "structure",
  "lexical_name": "PositiveCertificate",
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
  "slug": "positivecertificate--e749669df78c2329838e3df3",
  "source": {
    "blob": "aa8d9c696d13946ccdfeeee92fdd65d7be06e0fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positive/Variantf2ea94b4ef3d647b327173447cb11d3531b1d718886fbc8ada4ab5e9c3aaa70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e749669df78c2329838e3df377be999aa46de927ffd1b3569419d21621f7a065",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positive/Variantf2ea94b4ef3d647b327173447cb11d3531b1d718886fbc8ada4ab5e9c3aaa70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e25ff389b93102e201a1da2299101c38d602716c44fe0504c390561f69228bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveCertificate (patch : Patch) where
  build : BuildCheck patch
  theoremPreservation : TheoremPreservationCheck patch
  license : LicenseCheck patch
  tests_passed : build.allRequiredTestsPassed = true
  conventions_passed : build.targetConventionsPassed = true
  target_revision_checked : build.targetRevisionChecked = true
  license_passed : license.Passes
  certificateDigest : Digest

namespace PositiveCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positive/Variantf2ea94b4ef3d647b327173447cb11d3531b1d718886fbc8ada4ab5e9c3aaa70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Positive/Variantf2ea94b4ef3d647b327173447cb11d3531b1d718886fbc8ada4ab5e9c3aaa70e.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa8d9c696d13946ccdfeeee92fdd65d7be06e0fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
