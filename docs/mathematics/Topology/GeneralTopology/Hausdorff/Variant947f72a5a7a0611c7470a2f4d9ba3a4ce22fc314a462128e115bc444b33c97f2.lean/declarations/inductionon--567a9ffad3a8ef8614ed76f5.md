# inductionOn₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b843a6e7-1208-db3e-54ab-a30b95efc747",
  "kind": "lemma",
  "lexical_name": "inductionOn₂",
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
  "slug": "inductionon--567a9ffad3a8ef8614ed76f5",
  "source": {
    "blob": "f13a2e98c2ccf28f2041334ec8a494d43440ba81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 442,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:567a9ffad3a8ef8614ed76f52916b69707aa3ae22369acc013f2037fe886e6c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b843a6e7-1208-db3e-54ab-a30b95efc747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma inductionOn₂ [TopologicalSpace Y] {motive : T2Quotient X → T2Quotient Y → Prop}
    (q : T2Quotient X) (q' : T2Quotient Y) (h : ∀ x y, motive (mk x) (mk y)) : motive q q' :=
  Quotient.inductionOn₂ q q' h

/-- The largest T2 quotient of a topological space is indeed T2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13a2e98c2ccf28f2041334ec8a494d43440ba81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
