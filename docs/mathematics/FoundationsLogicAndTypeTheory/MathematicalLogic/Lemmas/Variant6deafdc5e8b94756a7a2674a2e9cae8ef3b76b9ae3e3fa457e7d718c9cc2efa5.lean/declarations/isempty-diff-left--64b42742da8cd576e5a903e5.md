# isEmpty_diff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b04d607-eaff-a87a-011d-1b2d6cac5185",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42fa42aa-f1e7-a9bb-077a-85a44f0a4738",
  "kind": "theorem",
  "lexical_name": "isEmpty_diff_left",
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
  "slug": "isempty-diff-left--64b42742da8cd576e5a903e5",
  "source": {
    "blob": "c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2487,
    "line": 2484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b42742da8cd576e5a903e5f1d5865268bae19b2c57bb49f13b7d7dd61c3043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42fa42aa-f1e7-a9bb-077a-85a44f0a4738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2484–2487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_diff_left [TransCmp cmp] (h : t₁.isEmpty) :
    (t₁ \ t₂).isEmpty = true :=
  DTreeMap.isEmpty_diff_left h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean#L2484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
