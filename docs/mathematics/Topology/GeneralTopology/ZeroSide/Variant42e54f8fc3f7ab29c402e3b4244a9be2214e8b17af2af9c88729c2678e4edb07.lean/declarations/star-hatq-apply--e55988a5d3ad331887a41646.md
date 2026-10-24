# star_hatQ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6314b10374daf4ea5582a3010bce0fb4ec4813d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 940,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f9578bf-b3ed-85a0-4e03-1402109420c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:360263d8-d1ae-10b5-157b-dd7355564ae1",
  "kind": "theorem",
  "lexical_name": "star_hatQ_apply",
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
  "slug": "star-hatq-apply--e55988a5d3ad331887a41646",
  "source": {
    "blob": "6314b10374daf4ea5582a3010bce0fb4ec4813d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 940,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55988a5d3ad331887a41646fdfff1dc7995ae9d7172019169e55913dc8c3b3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:360263d8-d1ae-10b5-157b-dd7355564ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 940–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_hatQ_apply (hconj : PhiHatConj T P) (k l : Fin (P.d T)) :
    star (hatQ Z T P hconj k l) = hatQ Z T P hconj k l :=
  ZeroBlockData.star_blockQ_apply _ _ k l

/-- **prop:block (ii)**: "n₊(Q) ≤ p" (by lem:inertia), for any Hermitian-ness witness h. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSide/Variant42e54f8fc3f7ab29c402e3b4244a9be2214e8b17af2af9c88729c2678e4edb07.lean#L940).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6314b10374daf4ea5582a3010bce0fb4ec4813d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
