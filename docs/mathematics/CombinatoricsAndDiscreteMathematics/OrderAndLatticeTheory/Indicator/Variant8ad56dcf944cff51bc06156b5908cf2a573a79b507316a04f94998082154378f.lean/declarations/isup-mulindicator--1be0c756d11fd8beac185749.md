# iSup_mulIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957af8b2-8c65-b03c-f93a-30ce99c880aa",
  "kind": "lemma",
  "lexical_name": "iSup_mulIndicator",
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
  "slug": "isup-mulindicator--1be0c756d11fd8beac185749",
  "source": {
    "blob": "9afca68df876cb6c4cc78766cf79fe498fc9e9bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indicator/Variant8ad56dcf944cff51bc06156b5908cf2a573a79b507316a04f94998082154378f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1be0c756d11fd8beac185749e251bded2157e7f11b6ab937e895c2f4d0b967c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indicator/Variant8ad56dcf944cff51bc06156b5908cf2a573a79b507316a04f94998082154378f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957af8b2-8c65-b03c-f93a-30ce99c880aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_mulIndicator {ι : Type*} [Preorder ι] [IsDirectedOrder ι] {f : ι → α → M}
    {s : ι → Set α} (h1 : (⊥ : M) = 1) (hf : Monotone f) (hs : Monotone s) :
    ⨆ i, (s i).mulIndicator (f i) = (⋃ i, s i).mulIndicator (⨆ i, f i) := by
  simp only [le_antisymm_iff, iSup_le_iff]
  refine ⟨fun i ↦ ?_, fun a ↦ ?_⟩
  · grw [← le_iSup f i, ← subset_iUnion s i]
    intro; simp [← h1]
  by_cases ha : a ∈ ⋃ i, s i
  · obtain ⟨i, hi⟩ : ∃ i, a ∈ s i := by simpa using ha
    rw [mulIndicator_of_mem ha, iSup_apply, iSup_apply]
    refine iSup_le fun j ↦ ?_
    obtain ⟨k, hik, hjk⟩ := exists_ge_ge i j
    refine le_iSup_of_le k <| (hf hjk _).trans_eq ?_
    rw [mulIndicator_of_mem (hs hik hi)]
  · rw [mulIndicator_of_notMem ha, ← h1]
    exact bot_le

end CompleteLattice

section CanonicallyOrderedMul

variable [Monoid M] [PartialOrder M] [CanonicallyOrderedMul M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indicator/Variant8ad56dcf944cff51bc06156b5908cf2a573a79b507316a04f94998082154378f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indicator/Variant8ad56dcf944cff51bc06156b5908cf2a573a79b507316a04f94998082154378f.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9afca68df876cb6c4cc78766cf79fe498fc9e9bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
