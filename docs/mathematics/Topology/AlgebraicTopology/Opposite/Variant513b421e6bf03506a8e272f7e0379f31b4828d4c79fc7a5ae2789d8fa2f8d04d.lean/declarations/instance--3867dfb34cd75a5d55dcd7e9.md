# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1daab2c27e82137c2e6f7eef6f61eeddcdb7182d3378851021ea56235c65584",
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
  "slug": "instance--3867dfb34cd75a5d55dcd7e9",
  "source": {
    "blob": "1fb8a1908811ac55dd75b47989fd46c4e755856a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 33,
    "path": "GRWTSK/Topology/AlgebraicTopology/Opposite/Variant513b421e6bf03506a8e272f7e0379f31b4828d4c79fc7a5ae2789d8fa2f8d04d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3867dfb34cd75a5d55dcd7e9231fe326856f160d79efda8814991a1a127d5a56",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Opposite/Variant513b421e6bf03506a8e272f7e0379f31b4828d4c79fc7a5ae2789d8fa2f8d04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1daab2c27e82137c2e6f7eef6f61eeddcdb7182d3378851021ea56235c65584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [(weakEquivalences C).HasTwoOutOfThreeProperty] :
    (weakEquivalences Cᵒᵖ).HasTwoOutOfThreeProperty := by
  rw [weakEquivalences_op]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Opposite/Variant513b421e6bf03506a8e272f7e0379f31b4828d4c79fc7a5ae2789d8fa2f8d04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Opposite/Variant513b421e6bf03506a8e272f7e0379f31b4828d4c79fc7a5ae2789d8fa2f8d04d.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb8a1908811ac55dd75b47989fd46c4e755856a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
