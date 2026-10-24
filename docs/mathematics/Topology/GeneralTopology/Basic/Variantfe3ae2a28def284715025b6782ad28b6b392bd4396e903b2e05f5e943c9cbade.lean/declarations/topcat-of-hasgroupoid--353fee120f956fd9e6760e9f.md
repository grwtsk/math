# TopCat.of.hasGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07b06ea16cd86ab13f27046c069708d7402c67db9ac4746a3fd4187e5ad24d01",
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
  "slug": "topcat-of-hasgroupoid--353fee120f956fd9e6760e9f",
  "source": {
    "blob": "0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:353fee120f956fd9e6760e9f4477eb1e9f1535ab29604c6345bf5e21fd89d5c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07b06ea16cd86ab13f27046c069708d7402c67db9ac4746a3fd4187e5ad24d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TopCat.of.hasGroupoid [HasGroupoid M G] : HasGroupoid (TopCat.of M) G :=
  inferInstanceAs <| HasGroupoid M G

/-- Let `P` be a `LocalInvariantProp` for functions between spaces with the groupoids `G`, `G'`
and let `M`, `M'` be charted spaces modelled on the model spaces of those groupoids.  Then there is
an induced `LocalPredicate` on the functions from `M` to `M'`, given by `LiftProp P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
