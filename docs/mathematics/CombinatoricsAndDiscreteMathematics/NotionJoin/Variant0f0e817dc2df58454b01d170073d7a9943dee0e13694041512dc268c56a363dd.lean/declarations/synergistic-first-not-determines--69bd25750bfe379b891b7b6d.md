# synergistic_first_not_determines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aff7a958f528e6844fb32640120adac61f596b4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:472c5e8a-bf3c-ce9f-2ba4-f8ba9ac9971b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ac0cc6a-b6c6-6c99-6143-27db8745a34a",
  "kind": "theorem",
  "lexical_name": "synergistic_first_not_determines",
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
  "slug": "synergistic-first-not-determines--69bd25750bfe379b891b7b6d",
  "source": {
    "blob": "aff7a958f528e6844fb32640120adac61f596b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bd25750bfe379b891b7b6d9df01fc4c5f0d1355dd1bb0610a8f3bad9de1817",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac0cc6a-b6c6-6c99-6143-27db8745a34a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synergistic_first_not_determines [DecidableEq Test]
    {first second : FiniteNotion Object Test Value} {commonPolicy : first.policy = second.policy}
    {identity : String} {budget : ℕ} {target : Object → Result}
    (synergy : first.SynergisticFor second commonPolicy identity budget target) :
    ¬ first.DeterminesAt budget target := synergy.1

/-- Synergy includes a separate failure of target recovery by the second component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff7a958f528e6844fb32640120adac61f596b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
