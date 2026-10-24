# observationCarrier_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f75038e-b540-7332-d33b-4d81932673f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e74f00a7-e139-d6a9-d2cf-6104bd6c7091",
  "kind": "theorem",
  "lexical_name": "observationCarrier_eq_iff",
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
  "slug": "observationcarrier-eq-iff--4ac86f4312055020f5279d6e",
  "source": {
    "blob": "38b01453ddf7ffab7f68e102b0bc5decf892fcee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac86f4312055020f5279d6e6fbd497a5afe443b0bc909991582a008e6cc8262",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e74f00a7-e139-d6a9-d2cf-6104bd6c7091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observationCarrier_eq_iff (obs : Test → Object → Value) (selected : Finset Test)
    (x y : Object) :
    observationCarrier obs selected x = observationCarrier obs selected y ↔
      ∀ test ∈ selected, obs test x = obs test y := by
  constructor
  · intro equal test member
    exact congrFun equal ⟨test, member⟩
  · intro equal
    funext test
    exact equal test.val test.property

/-- An added observation splits a previously equal carrier pair exactly when its values differ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variantac38f79dbf30e1c3b62f19fb2fb012bf2b110443beb8983d7bf8f455eb4bed5f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b01453ddf7ffab7f68e102b0bc5decf892fcee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
