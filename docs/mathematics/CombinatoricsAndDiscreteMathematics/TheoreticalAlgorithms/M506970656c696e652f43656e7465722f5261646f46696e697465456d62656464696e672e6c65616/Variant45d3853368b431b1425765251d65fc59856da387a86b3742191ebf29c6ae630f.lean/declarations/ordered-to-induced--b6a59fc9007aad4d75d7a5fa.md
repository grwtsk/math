# ordered_to_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d64c4008-a7a5-f77e-fc92-212fb23bd43d",
  "kind": "theorem",
  "lexical_name": "ordered_to_induced",
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
  "slug": "ordered-to-induced--b6a59fc9007aad4d75d7a5fa",
  "source": {
    "blob": "0ab38af47e2b08e95b596d70afd464ee27c2b1fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variant45d3853368b431b1425765251d65fc59856da387a86b3742191ebf29c6ae630f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a59fc9007aad4d75d7a5fa2886ec79025b2220f31225030117367936b46d5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variant45d3853368b431b1425765251d65fc59856da387a86b3742191ebf29c6ae630f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64c4008-a7a5-f77e-fc92-212fb23bd43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordered_to_induced
    {G : FiniteBoolGraph} {f : Nat -> Nat}
    (hordered : PreservesOrderedEdgesUpTo G G.n f) :
    PreservesInducedEdges G f := by
  intro i j hi hj hne
  rcases Nat.lt_or_gt_of_ne hne with hij | hji
  · have hord := hordered i j hij hj
    have hsymGraph : G.edge j i = G.edge i j := G.symmetric j i hj hi
    constructor
    · intro hedge
      have hedge' : bitRadoEdge (f j) (f i) :=
        bitRadoEdge_symmetric hedge
      have hjiEdge : G.edge j i = true := hord.1 hedge'
      rwa [hsymGraph] at hjiEdge
    · intro hijEdge
      have hjiEdge : G.edge j i = true := by
        rwa [hsymGraph]
      exact bitRadoEdge_symmetric (hord.2 hjiEdge)
  · exact hordered j i hji hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variant45d3853368b431b1425765251d65fc59856da387a86b3742191ebf29c6ae630f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616/Variant45d3853368b431b1425765251d65fc59856da387a86b3742191ebf29c6ae630f.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab38af47e2b08e95b596d70afd464ee27c2b1fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
