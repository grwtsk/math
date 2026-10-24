# rawInner_respects_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87178ec584f863f55c2dd99d08789dca1357986c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79fc7562-e222-bf10-86eb-b7fb2f86d9d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:413da7df-e437-c1fb-6cbb-134073aadba9",
  "kind": "theorem",
  "lexical_name": "rawInner_respects_quotient",
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
  "slug": "rawinner-respects-quotient--a0e6dd70552aef35f4ef5d2d",
  "source": {
    "blob": "87178ec584f863f55c2dd99d08789dca1357986c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 33,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0e6dd70552aef35f4ef5d2d4ca02bf501286a4d6954a7ba716ce07259626f44",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:413da7df-e437-c1fb-6cbb-134073aadba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rawInner_respects_quotient
    (left right left' right' : Raw kernel)
    (leftRelated :
      (kernelNullSubmodule kernel).quotientRel left left')
    (rightRelated :
      (kernelNullSubmodule kernel).quotientRel right right') :
    Raw.inner kernel left right = Raw.inner kernel left' right' := by
  have leftDifference :
      left - left' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp leftRelated
  have rightDifference :
      right - right' ∈ kernelNullSubmodule kernel :=
    (Submodule.quotientRel_def _).mp rightRelated
  exact (rawInner_eq_of_sub_mem_left kernel leftDifference right).trans
    (rawInner_eq_of_sub_mem_right kernel left' rightDifference)

/-- The kernel form descended to the radical quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variante56a06cddbca6b66e84cac530640f56a59851a81e0aa7d1bcf7702520ab58d90.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87178ec584f863f55c2dd99d08789dca1357986c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
