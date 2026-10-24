# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0eabee36b9773e8d36b43bb5272703018235bacf60820f504cdd4245659431ee",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5f46e7a76c18c69eaca5549e",
  "source": {
    "blob": "fc4d7b20a3ca552490a942117118d98bdbca413b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f46e7a76c18c69eaca5549e6a21b41f44c0b3f799f54abcd8c1f3058265acf0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0eabee36b9773e8d36b43bb5272703018235bacf60820f504cdd4245659431ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Neg R] [Neg M] [ContinuousNeg R] [ContinuousNeg M] : ContinuousNeg (tsze R M) :=
  Prod.continuousNeg

/-- This is not an instance due to complaints by the `fails_quickly` linter. At any rate, we only
really care about the `IsTopologicalRing` instance below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4d7b20a3ca552490a942117118d98bdbca413b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
