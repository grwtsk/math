# mulIndicator_iInter_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1743d6902befca7588a1dfcea417aa814016cb2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64f49fba-1e2f-f56d-61e1-4a304c7d3aa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0900db69-cea9-bb5f-6412-d358f88c5ae8",
  "kind": "lemma",
  "lexical_name": "mulIndicator_iInter_apply",
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
  "slug": "mulindicator-iinter-apply--ac4a929877721546c0663636",
  "source": {
    "blob": "1743d6902befca7588a1dfcea417aa814016cb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 170,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4a929877721546c06636366607aaa7b00743b213336d77bdb5fb2242ea047d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0900db69-cea9-bb5f-6412-d358f88c5ae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulIndicator_iInter_apply (h1 : (⊥ : M) = 1) (s : ι → Set α) (f : α → M) (x : α) :
    mulIndicator (⋂ i, s i) f x = ⨅ i, mulIndicator (s i) f x := by
  by_cases hx : x ∈ ⋂ i, s i
  · rw [mulIndicator_of_mem hx]
    rw [mem_iInter] at hx
    refine le_antisymm ?_ (by simp only [mulIndicator_of_mem (hx _), ciInf_const, le_refl])
    exact le_iInf (fun j ↦ by simp only [mulIndicator_of_mem (hx j), le_refl])
  · rw [mulIndicator_of_notMem hx]
    simp only [mem_iInter, not_exists, not_forall] at hx
    rcases hx with ⟨j, hj⟩
    refine le_antisymm (by simp only [← h1, le_iInf_iff, bot_le, forall_const]) ?_
    simpa [mulIndicator_of_notMem hj] using (iInf_le (fun i ↦ (s i).mulIndicator f) j) x

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1743d6902befca7588a1dfcea417aa814016cb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
