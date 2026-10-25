# Complex.coe_selfAdjointEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72e9d3814d1ce9d7d1c2888c2f31f607a6e348b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5551fd93-23d8-006d-0f18-2e842cb057c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0edb246c-6829-6e55-6c0f-f19f84598867",
  "kind": "lemma",
  "lexical_name": "Complex.coe_selfAdjointEquiv",
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
  "slug": "complex-coe-selfadjointequiv--df76e4f534f8ff2ec77e3a82",
  "source": {
    "blob": "72e9d3814d1ce9d7d1c2888c2f31f607a6e348b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df76e4f534f8ff2ec77e3a820d306b3bf6314c5f75bc2748f3dd86b6fdb25be7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0edb246c-6829-6e55-6c0f-f19f84598867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Complex.coe_selfAdjointEquiv (z : selfAdjoint ℂ) :
    (selfAdjointEquiv z : ℂ) = z := by
  simpa [selfAdjointEquiv_symm_apply]
    using (congr_arg Subtype.val <| Complex.selfAdjointEquiv.left_inv z)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Module/Variantdd486400abee281bf17215559ce9c5f886bccef5978b83f585d251ec659a9986.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e9d3814d1ce9d7d1c2888c2f31f607a6e348b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
