# TopCat.of.hasGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f0fc2cf928242aca97d42eb77b689a4731c6c54392e5b8c8087ed2f13dde040",
  "kind": "instance",
  "lexical_name": "TopCat.of.hasGroupoid",
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
  "slug": "topcat-of-hasgroupoid--0526e00136b73730c5e61e3f",
  "source": {
    "blob": "da1d0a56bc020c8f340fce7f7038253f155eae20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0526e00136b73730c5e61e3ff4a4ee675142154298562b62372d218b27aea952",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f0fc2cf928242aca97d42eb77b689a4731c6c54392e5b8c8087ed2f13dde040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TopCat.of.hasGroupoid [HasGroupoid M G] : HasGroupoid (TopCat.of M) G :=
  (inferInstance : HasGroupoid M G)

/-- Let `P` be a `LocalInvariantProp` for functions between spaces with the groupoids `G`, `G'`
and let `M`, `M'` be charted spaces modelled on the model spaces of those groupoids.  Then there is
an induced `LocalPredicate` on the functions from `M` to `M'`, given by `LiftProp P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da1d0a56bc020c8f340fce7f7038253f155eae20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
