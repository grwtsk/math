# isEmpty_union

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
      "line": 1920,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8f85eaf-d9bd-9e60-e41a-3398f8146660",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4767a4f6-87f4-c51f-f979-dd40f0a7e4f8",
  "kind": "theorem",
  "lexical_name": "isEmpty_union",
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
  "slug": "isempty-union--30052b4c488871c289bfefe2",
  "source": {
    "blob": "c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1930,
    "line": 1920,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30052b4c488871c289bfefe2c49bb07c3c1c90807747d1985cfda9b85cf7f009",
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

Occurrence: `result:4767a4f6-87f4-c51f-f979-dd40f0a7e4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1920–1930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_union [TransCmp cmp] :
    (t₁ ∪ t₂).isEmpty = (t₁.isEmpty && t₂.isEmpty) :=
  DTreeMap.isEmpty_union

end Union

section Inter

variable {t₁ t₂ : TreeMap α β cmp}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant6deafdc5e8b94756a7a2674a2e9cae8ef3b76b9ae3e3fa457e7d718c9cc2efa5.lean#L1920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95c5b0241a03ccd015e0c5bb19ac226cf0a6a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
