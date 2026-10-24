# LocallyFiniteOrder.orderAddMonoidHom_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0675be29429bd3576a788557de7ec9886fdc421e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c80f5d4-fd0b-e656-348d-724016d2589e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a270372e-8180-d076-ef9b-3ca7c0573d2b",
  "kind": "lemma",
  "lexical_name": "LocallyFiniteOrder.orderAddMonoidHom_bijective",
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
  "slug": "locallyfiniteorder-orderaddmonoidhom-bijective--18e4686f4d131651b2f91307",
  "source": {
    "blob": "0675be29429bd3576a788557de7ec9886fdc421e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e4686f4d131651b2f913074d7d01aa73f9aaf794e16dc825957512052a7227",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a270372e-8180-d076-ef9b-3ca7c0573d2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocallyFiniteOrder.orderAddMonoidHom_bijective [Nontrivial G] :
    Function.Bijective (orderAddMonoidHom G) := by
  refine ⟨orderAddMonoidHom_strictMono.injective, ?_⟩
  suffices 1 ∈ (orderAddMonoidHom G).range by
    obtain ⟨x, hx⟩ := this
    exact fun a ↦ ⟨a • x, by simp_all⟩
  have ⟨a, ha⟩ := exists_zero_lt (α := G)
  obtain ⟨b, hb⟩ := exists_covBy_of_wellFoundedLT (α := Icc 0 a) (a := ⟨0, by simpa using! ha.le⟩)
    (fun H ↦ ha.not_ge (@H ⟨a, by simpa using! ha.le⟩ ha.le))
  use b.1
  have : 0 ≤ b.1 := hb.1.le
  suffices Ico 0 b.1 = {0} by simpa [orderAddMonoidHom, addMonoidHom, this]
  ext x
  simp only [mem_Ico, mem_singleton]
  constructor
  · rintro ⟨h₁, h₂⟩
    by_contra hx'
    have := b.2
    simp only [Finset.mem_Icc] at this
    exact hb.2 (c := ⟨x, by simpa [h₁] using! h₂.le.trans this.2⟩)
      (lt_of_le_of_ne h₁ (by simpa using! Ne.symm hx')) h₂
  · rintro rfl
    simpa using! hb.1

variable (G) in
/-- Any nontrivial linearly ordered abelian group that is locally finite is isomorphic to `ℤ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0675be29429bd3576a788557de7ec9886fdc421e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
