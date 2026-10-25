# accepts_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb9c44511ab077418efc2ed7a9433bb1462e2ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f973e27a-f143-1bb7-3e09-72574c1e4a13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2edce70-2a08-7a73-501f-1bb5708db96c",
  "kind": "theorem",
  "lexical_name": "accepts_union",
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
  "slug": "accepts-union--095ae5c6669e99548a4e2d8b",
  "source": {
    "blob": "5eb9c44511ab077418efc2ed7a9433bb1462e2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095ae5c6669e99548a4e2d8b4b1821435e9330f6306df285b8b78b86ba6de804",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2edce70-2a08-7a73-501f-1bb5708db96c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accepts_union (M1 : DFA α σ1) (M2 : DFA α σ2) :
    (M1.union M2).accepts = M1.accepts + M2.accepts := by
  simp [accepts]

end union

section inter

variable {σ1 σ2 : Type v} (M1 : DFA α σ1) (M2 : DFA α σ2)

/-- DFAs are closed under intersection. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb9c44511ab077418efc2ed7a9433bb1462e2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
