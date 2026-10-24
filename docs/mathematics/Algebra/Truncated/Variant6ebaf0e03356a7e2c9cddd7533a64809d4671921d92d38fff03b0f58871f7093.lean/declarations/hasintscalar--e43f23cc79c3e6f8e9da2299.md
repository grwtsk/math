# hasIntScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdcce947c7a79788ae7ab16ea8885de2c27ee1bd31c45c5924c570f7a5116e95",
  "kind": "instance",
  "lexical_name": "hasIntScalar",
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
  "slug": "hasintscalar--e43f23cc79c3e6f8e9da2299",
  "source": {
    "blob": "c1a34c8069266f077f885f9399835f787de854b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 188,
    "path": "GRWTSK/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e43f23cc79c3e6f8e9da2299096e3a57fa87d9868b9e31fe7cbda2b8e3eebc74",
  "verification": {
    "reference": "docs/verification/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdcce947c7a79788ae7ab16ea8885de2c27ee1bd31c45c5924c570f7a5116e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasIntScalar : SMul ℤ (TruncatedWittVector p n R) :=
  ⟨fun m x => truncateFun n (m • x.out)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Truncated/Variant6ebaf0e03356a7e2c9cddd7533a64809d4671921d92d38fff03b0f58871f7093.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a34c8069266f077f885f9399835f787de854b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
