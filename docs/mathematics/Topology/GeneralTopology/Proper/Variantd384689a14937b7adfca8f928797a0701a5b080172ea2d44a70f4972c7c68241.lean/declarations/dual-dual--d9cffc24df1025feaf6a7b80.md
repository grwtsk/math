# dual_dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b12bbaeeb3524098ba8d35019d77a1bb040b712",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72e3b550-ec95-38f4-bf74-db4f6316252c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d50e9780-0ae8-0f80-0026-d5385eec42aa",
  "kind": "theorem",
  "lexical_name": "dual_dual",
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
  "slug": "dual-dual--d9cffc24df1025feaf6a7b80",
  "source": {
    "blob": "1b12bbaeeb3524098ba8d35019d77a1bb040b712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cffc24df1025feaf6a7b809174edc09def32877c884b5c4a2ccd2710cf5c04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d50e9780-0ae8-0f80-0026-d5385eec42aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_dual (K : ProperCone ℝ E) : K.dual.dual = K :=
  ProperCone.toPointedCone_injective <| PointedCone.toConvexCone_injective <|
    (K : ConvexCone ℝ E).innerDualCone_of_innerDualCone_eq_self K.nonempty K.isClosed

/-- This is a relative version of
`ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_notMem`, which we recover by setting
`f` to be the identity map. This is also a geometric interpretation of the Farkas' lemma
stated using proper cones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variantd384689a14937b7adfca8f928797a0701a5b080172ea2d44a70f4972c7c68241.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b12bbaeeb3524098ba8d35019d77a1bb040b712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
