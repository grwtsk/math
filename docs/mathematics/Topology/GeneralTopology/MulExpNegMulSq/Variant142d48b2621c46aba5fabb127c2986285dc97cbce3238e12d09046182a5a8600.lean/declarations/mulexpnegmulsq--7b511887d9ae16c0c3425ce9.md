# mulExpNegMulSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b672901a55a2fc85406eb8363f4dd8f05fb3a8033e6e40f2ac4633902dd1289e",
  "kind": "def",
  "lexical_name": "mulExpNegMulSq",
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
  "slug": "mulexpnegmulsq--7b511887d9ae16c0c3425ce9",
  "source": {
    "blob": "8770f79d53c521ca2456c1d3d418782326995dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b511887d9ae16c0c3425ce95d14c00bec8ca7180b21ea08f6a488a4397e9691",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b672901a55a2fc85406eb8363f4dd8f05fb3a8033e6e40f2ac4633902dd1289e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulExpNegMulSq (ε x : ℝ) := x * exp (- (ε * x * x))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant142d48b2621c46aba5fabb127c2986285dc97cbce3238e12d09046182a5a8600.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8770f79d53c521ca2456c1d3d418782326995dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
