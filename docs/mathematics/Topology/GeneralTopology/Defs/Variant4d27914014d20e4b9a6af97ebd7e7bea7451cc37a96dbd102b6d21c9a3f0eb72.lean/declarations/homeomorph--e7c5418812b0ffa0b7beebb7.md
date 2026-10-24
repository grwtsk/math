# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08090aad563830e78f4031e05284aa8d15e2d95de5106a4ebbaa5b4aa9376b47",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--e7c5418812b0ffa0b7beebb7",
  "source": {
    "blob": "7c7e9c3c815eb873ab5e637aaac83e4cdf80f39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 554,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7c5418812b0ffa0b7beebb7c48ca62c59efd4d3ca668073de9bbbd4a6d7d2cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08090aad563830e78f4031e05284aa8d15e2d95de5106a4ebbaa5b4aa9376b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homeomorph (f : X → Y) (hf : IsHomeomorph f) : X ≃ₜ Y where
  continuous_toFun := hf.1
  continuous_invFun :=
    Equiv.ofBijective f hf.bijective |>.continuous_symm_iff.2 hf.isOpenMap
  toEquiv := Equiv.ofBijective f hf.bijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant4d27914014d20e4b9a6af97ebd7e7bea7451cc37a96dbd102b6d21c9a3f0eb72.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7e9c3c815eb873ab5e637aaac83e4cdf80f39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
