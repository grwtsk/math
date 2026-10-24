# LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27b792d4-79ab-1012-e5c5-c6ce7125b4d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e2bb569-bd6a-9dfe-9998-3af34f42c142",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero",
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
  "slug": "linearorderedcommgroupwithzero-wellfoundedon-setofpred-ge-gt-iff-nonempt--f616c93a81f7189df805fce5",
  "source": {
    "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 444,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f616c93a81f7189df805fce5f5dd157165b6f3cad49804d5989ddf677d486f4d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e2bb569-bd6a-9dfe-9998-3af34f42c142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero
    {G₀ : Type*} [LinearOrderedCommGroupWithZero G₀] [Nontrivial G₀ˣ] {g : G₀} (hg : g ≠ 0) :
    Set.WellFoundedOn {x : G₀ | x ≤ g} (· > ·) ↔ Nonempty (G₀ ≃*o ℤᵐ⁰) := by
  have hg' : g⁻¹ ≠ 0 := by simp [hg]
  rw [← wellFoundedOn_setOfPred_le_lt_iff_nonempty_discrete_of_ne_zero hg',
    ← Set.wellFoundedOn_sdiff_singleton (a := 0)]
  refine ⟨fun h ↦ (h.mapsTo (·⁻¹) ?_).mono' ?_, fun h ↦ (h.mapsTo (·⁻¹) ?_).mono' ?_⟩
  · intro x
    rcases eq_or_ne x 0 with rfl | hx
    · simp [hg]
    simp only [mem_ofPred_eq, mem_sdiff, mem_singleton_iff, inv_eq_zero, hx, not_false_eq_true,
      and_true]
    refine (inv_le_comm₀ ?_ ?_).mp <;>
    simp [zero_lt_iff, hg, hx]
  · simp only [mem_ofPred_eq, Function.onFun, gt_iff_lt]
    intro a ha b _
    refine inv_strictAnti₀ ?_
    contrapose! ha
    simp only [le_zero_iff] at ha
    simp [zero_lt_iff, ha, hg]
  · intro x
    simp only [mem_sdiff, mem_ofPred_eq, mem_singleton_iff, and_imp]
    intro hxg hx
    refine inv_anti₀ ?_ hxg
    simp [zero_lt_iff, hx]
  · simp only [mem_sdiff, mem_ofPred_eq, mem_singleton_iff, gt_iff_lt, Function.onFun, and_imp]
    intro a _ _ b _ hb0
    refine inv_strictAnti₀ ?_
    simp [zero_lt_iff, hb0]

@[deprecated (since := "2026-07-09")]
alias LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete_of_ne_zero :=
  LinearOrderedCommGroupWithZero.wellFoundedOn_setOfPred_ge_gt_iff_nonempty_discrete_of_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2144c65ecf08d5c4a3d68152d38d997816769f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
