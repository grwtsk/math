# codeSupp_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1047,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:161511d7-7652-a32f-7e26-f5d8f1acd89b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa1fa30f-c2b3-150d-9316-2078046d392d",
  "kind": "theorem",
  "lexical_name": "codeSupp_self",
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
  "slug": "codesupp-self--9bf0d7ce273e88895fc21444",
  "source": {
    "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1050,
    "line": 1047,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bf0d7ce273e88895fc214449b389522ea358918a501008c74f1c2273664f5a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa1fa30f-c2b3-150d-9316-2078046d392d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1047–1050.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codeSupp_self (c k) : trStmts₁ (trNormal c k) ⊆ codeSupp c k :=
  Finset.Subset.trans (codeSupp'_self _ _) (Finset.union_subset_left fun _ a ↦ a)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean#L1047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11648bb1fd69b7d0f80769fec28bf90ab05672f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
