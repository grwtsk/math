# coind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3ac471112fc3173c91f2833081db99a9f34b53a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 743,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05593b98ba399f63af619d75fa4fff484b393ce8f5ee5c3070a0debce484ab88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d010d92f-fdaa-7cf6-92d6-f2542e6f6992",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49fe9ed8-5c12-27aa-28c6-e28c2bd7cd07",
  "kind": "theorem",
  "lexical_name": "coind",
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
  "slug": "coind--1a2ec4bd3c2e3fd82ae575c4",
  "source": {
    "blob": "d3ac471112fc3173c91f2833081db99a9f34b53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 743,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant05593b98ba399f63af619d75fa4fff484b393ce8f5ee5c3070a0debce484ab88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a2ec4bd3c2e3fd82ae575c45a8ed40bdd6ae037955754f883062c954c6023a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant05593b98ba399f63af619d75fa4fff484b393ce8f5ee5c3070a0debce484ab88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49fe9ed8-5c12-27aa-28c6-e28c2bd7cd07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coind {s : Multiseries basis_hd basis_tl}
    (motive : (ms : Multiseries basis_hd basis_tl) → Prop)
    (h_base : motive s)
    (h_step : ∀ exp coef tl, motive (.cons exp coef tl) →
        coef.Sorted ∧
        leadingExp tl < exp ∧
        motive tl) :
    s.Sorted := by
  constructor
  · apply Seq.all_coind
    · exact h_base
    · intro (exp, coef) tl h
      grind [h_step exp coef tl h]
  · apply Seq.Pairwise.coind_trans
    · exact h_base
    · intro (exp, coef) tl h
      constructor
      · intro (tl_exp, tl_coef) h_tl
        rw [gt_iff_lt, lt_iff_lt]
        replace h_step := (h_step exp coef tl h).right.left
        cases tl <;> simp [leadingExp, head] at h_tl h_step
        grind
      · grind [h_step exp coef tl h]

end Multiseries.Sorted

namespace Sorted

/-- `[]` is `Sorted`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant05593b98ba399f63af619d75fa4fff484b393ce8f5ee5c3070a0debce484ab88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant05593b98ba399f63af619d75fa4fff484b393ce8f5ee5c3070a0debce484ab88.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ac471112fc3173c91f2833081db99a9f34b53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
