# mulOption_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63aee731e221da7ed91d75dd854fadf2690de46a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 838,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7e263cf-c540-92da-e967-20cded9ff1ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf991760-026c-31e9-1259-fe5b8ebc361b",
  "kind": "lemma",
  "lexical_name": "mulOption_symm",
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
  "slug": "muloption-symm--49cec8aee6997d7d41d2221d",
  "source": {
    "blob": "63aee731e221da7ed91d75dd854fadf2690de46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 838,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49cec8aee6997d7d41d2221df2c036c0281a614c66b14c98a9f660df8503904f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf991760-026c-31e9-1259-fe5b8ebc361b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulOption_symm (x y) {i j} : ⟦mulOption x y i j⟧ = (⟦mulOption y x j i⟧ : Game) := by
  dsimp only [mulOption, quot_sub, quot_add]
  rw [add_comm]
  congr 1
  on_goal 1 => congr 1
  all_goals rw [quot_mul_comm]

/-- The left options of `x * y` of the second kind are the left options of `(-x) * (-y)` of the
  first kind, up to equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant016000540791797634311f365afa1e08a062bf1b5c50f1a0e6bc63ff4d5636fc.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63aee731e221da7ed91d75dd854fadf2690de46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
