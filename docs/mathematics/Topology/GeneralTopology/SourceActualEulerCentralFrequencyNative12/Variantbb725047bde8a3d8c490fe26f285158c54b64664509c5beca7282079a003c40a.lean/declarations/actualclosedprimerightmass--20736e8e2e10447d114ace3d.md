# actualClosedPrimeRightMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21cfbf06a28540dcd3db7f1a262731dbe3f7b4b64407aaf3ee0caa2b75167085",
  "kind": "def",
  "lexical_name": "actualClosedPrimeRightMass",
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
  "slug": "actualclosedprimerightmass--20736e8e2e10447d114ace3d",
  "source": {
    "blob": "7345853cb0d4f687a6f704c820554cd8256da87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20736e8e2e10447d114ace3dac820aadfcbd051f867fced7d91f19bbbcbb1d61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21cfbf06a28540dcd3db7f1a262731dbe3f7b4b64407aaf3ee0caa2b75167085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualClosedPrimeRightMass (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊+1),
    if n = 0 then 0 else ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantbb725047bde8a3d8c490fe26f285158c54b64664509c5beca7282079a003c40a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7345853cb0d4f687a6f704c820554cd8256da87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
