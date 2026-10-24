# primeUpperCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:135e5a0d780717386e757127a7be87ba9c63e65e603df50ee4978217a8b2cfed",
  "kind": "def",
  "lexical_name": "primeUpperCandidate",
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
  "slug": "primeuppercandidate--c22ac4430668c9c5891312b7",
  "source": {
    "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c22ac4430668c9c5891312b7f51c25e5203608c62cf9cca4b88ad24ef173d582",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:135e5a0d780717386e757127a7be87ba9c63e65e603df50ee4978217a8b2cfed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def primeUpperCandidate (n : ℕ) : ℕ :=
  40 * n * ⌈Real.log n⌉₊

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1062b5fa7329ef1f6dd1a17ef544067d18c2647c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
