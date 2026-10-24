# lawsonClosed_iff_scottClosed_of_isLowerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a224eec9-54e9-5c24-61f8-bf60fcbcee67",
  "kind": "lemma",
  "lexical_name": "lawsonClosed_iff_scottClosed_of_isLowerSet",
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
  "slug": "lawsonclosed-iff-scottclosed-of-islowerset--5f49a6acb46b475daa05c2c3",
  "source": {
    "blob": "4485e3840a0ccec4707acf83abfc0b47384444a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f49a6acb46b475daa05c2c37ad59587a0a85c31553bbb763d50320d70269c43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a224eec9-54e9-5c24-61f8-bf60fcbcee67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lawsonClosed_iff_scottClosed_of_isLowerSet (s : Set α) (h : IsLowerSet s) :
    IsClosed[L] s ↔ IsClosed[S] s := by
  rw [← @isOpen_compl_iff, ← isOpen_compl_iff,
    (lawsonOpen_iff_scottOpen_of_isUpperSet' L S _ (isUpperSet_compl.mpr h))]

include S in
/-- A lower set is Lawson closed if and only if it is closed under sups of directed sets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4485e3840a0ccec4707acf83abfc0b47384444a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
