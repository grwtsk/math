# mk_le_mk_mul_of_mk_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "091c2bbaf40772e88363a0b09de99d5040f6b25e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53d1cee3-9ba3-7a89-4882-5385d7586827",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d70aeedd-8786-bb2f-eac6-4e0e87f6f35d",
  "kind": "theorem",
  "lexical_name": "mk_le_mk_mul_of_mk_preimage_le",
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
  "slug": "mk-le-mk-mul-of-mk-preimage-le--bab1e569d72edb0bb68bf9d6",
  "source": {
    "blob": "091c2bbaf40772e88363a0b09de99d5040f6b25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab1e569d72edb0bb68bf9d6f05d978cfbc89ec9e60b92ceb8aaee8e16339b75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d70aeedd-8786-bb2f-eac6-4e0e87f6f35d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_mk_mul_of_mk_preimage_le {c : Cardinal} (f : α → β) (hf : ∀ b : β, #(f ⁻¹' {b}) ≤ c) :
    #α ≤ #β * c := by
  simpa only [← mk_congr (@Equiv.sigmaFiberEquiv α β f), mk_sigma, ← sum_const'] using!
    sum_le_sum _ _ hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `091c2bbaf40772e88363a0b09de99d5040f6b25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
