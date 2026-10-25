# cof_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe54a2c5b4103ab5688d57104d70465cb3398217",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/807e5812fc09d40951db9072359b14b6c47c2bc3b003bd537f08f1cd8f619b9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e89a4285-31b5-1c08-ef4f-cbaa1408058b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ed59bf-ab3b-9a81-fe7c-773e7a42952d",
  "kind": "theorem",
  "lexical_name": "cof_succ",
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
  "slug": "cof-succ--1bbfd3245f2e1bd3c2dedbf1",
  "source": {
    "blob": "fe54a2c5b4103ab5688d57104d70465cb3398217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant807e5812fc09d40951db9072359b14b6c47c2bc3b003bd537f08f1cd8f619b9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bbfd3245f2e1bd3c2dedbf16349e5a9c8e8748d682e918e7835b24f7fc02b6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant807e5812fc09d40951db9072359b14b6c47c2bc3b003bd537f08f1cd8f619b9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ed59bf-ab3b-9a81-fe7c-773e7a42952d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cof_succ (o) : cof (succ o) = 1 := by
  apply le_antisymm
  · refine inductionOn o fun α r _ => ?_
    change cof (type _) ≤ _
    rw [← (_ : #_ = 1)]
    · apply cof_type_le
      refine fun a => ⟨Sum.inr PUnit.unit, Set.mem_singleton _, ?_⟩
      rcases a with (a | ⟨⟨⟨⟩⟩⟩) <;> simp [EmptyRelation]
    · rw [Cardinal.mk_fintype, Set.card_singleton]
      simp
  · rw [← Cardinal.succ_zero, succ_le_iff]
    simpa [lt_iff_le_and_ne, Cardinal.zero_le] using fun h =>
      succ_ne_zero o (cof_eq_zero.1 (Eq.symm h))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant807e5812fc09d40951db9072359b14b6c47c2bc3b003bd537f08f1cd8f619b9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant807e5812fc09d40951db9072359b14b6c47c2bc3b003bd537f08f1cd8f619b9c.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe54a2c5b4103ab5688d57104d70465cb3398217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
