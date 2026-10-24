# IsSRGWith.ediam_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d18ff76d-ba1c-f889-58b7-c5ebce393144",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0223401-5177-e42c-12fe-009217c1f39e",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.ediam_eq_two",
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
  "slug": "issrgwith-ediam-eq-two--e0d3a3db28794b8976a45e45",
  "source": {
    "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d3a3db28794b8976a45e4561bfa2cfbca89168db0563adc33d4f0f591b82f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0223401-5177-e42c-12fe-009217c1f39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.ediam_eq_two [Nontrivial V] (h : G.IsSRGWith n k ℓ μ) (ht : G ≠ ⊤) (hm : μ ≠ 0) :
    G.ediam = 2 := by
  apply le_antisymm
  · rw [ediam_le_iff]
    intro u v
    by_contra! hc
    obtain ⟨hn, ha, he⟩ := two_lt_edist_iff.mp hc
    have h := h.of_not_adj hn ha
    simp_all
  · by_contra
    have := not_subsingleton V
    simp_all [Order.le_one_iff]

variable [DecidableEq V]

/-- Complete graphs are strongly regular. Note that `μ` can take any value
for complete graphs, since there are no distinct pairs of non-adjacent vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335b84b790d194581b260b50a45576edcb3ad0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
