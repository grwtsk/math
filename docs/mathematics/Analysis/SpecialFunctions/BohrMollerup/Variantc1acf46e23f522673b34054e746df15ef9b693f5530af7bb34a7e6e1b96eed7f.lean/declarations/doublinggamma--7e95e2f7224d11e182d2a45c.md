# doublingGamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76af5cfe4787c599301c06d954868a9a19c40717d628fa7b998e0eb5bd3f2975",
  "kind": "def",
  "lexical_name": "doublingGamma",
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
  "slug": "doublinggamma--7e95e2f7224d11e182d2a45c",
  "source": {
    "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 375,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e95e2f7224d11e182d2a45ca7aab021c94036e16c51f55727658e6c363deebe",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76af5cfe4787c599301c06d954868a9a19c40717d628fa7b998e0eb5bd3f2975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doublingGamma (s : ℝ) : ℝ :=
  Gamma (s / 2) * Gamma (s / 2 + 1 / 2) * 2 ^ (s - 1) / √π

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
