# WithBot.denselyOrdered_set_iff_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6800154b-b0b6-a7f8-525d-3db409697855",
  "kind": "lemma",
  "lexical_name": "WithBot.denselyOrdered_set_iff_subsingleton",
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
  "slug": "withbot-denselyordered-set-iff-subsingleton--7199f15aef639dc9d21c7adc",
  "source": {
    "blob": "c9bcb249f6c07bd9b34f80298271a986b42f1dc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DenselyOrdered/Variant295b890be658e6695c228c641656e08c3bec429f64fff75ffd047243bdab7586.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7199f15aef639dc9d21c7adc6b4c97532d352d8253459b80931e3f6d339dbbaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DenselyOrdered/Variant295b890be658e6695c228c641656e08c3bec429f64fff75ffd047243bdab7586.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6800154b-b0b6-a7f8-525d-3db409697855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma WithBot.denselyOrdered_set_iff_subsingleton {s : Set (WithBot X)} :
    DenselyOrdered s ↔ s.Subsingleton := by
  refine ⟨fun H ↦ ?_, fun h ↦ h.denselyOrdered⟩
  rw [← Set.subsingleton_coe, ← not_nontrivial_iff_subsingleton, nontrivial_iff_lt]
  suffices DenselyOrdered (WithBot.some ⁻¹' s) by
    rintro ⟨x, y, H⟩
    rw [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocallyFiniteOrderDenselyOrderedIffSubsingleton.Variant348d8b07ad557695b69ec76fdefd08cbf9aa14217951c30feb2a46d5e0db1ea8.denselyOrdered_set_iff_subsingleton] at this
    obtain ⟨z, hz, hz'⟩ := exists_between H
    have hz0 : (⊥ : WithBot X) < z := by simp [(Subtype.coe_lt_coe.mpr hz).trans_le']
    replace hz' : WithBot.unbot z.val hz0.ne' < WithBot.unbot y (hz0.trans hz').ne' := by
      rwa [← WithBot.coe_lt_coe, WithBot.coe_unbot, WithBot.coe_unbot]
    refine absurd (this ?_ ?_) hz'.ne <;>
    simp
  constructor
  simp only [Subtype.exists, Set.mem_preimage, Subtype.forall, Subtype.mk_lt_mk, exists_and_right,
    exists_prop]
  intro x hx y hy hxy
  have : (⟨_, hx⟩ : s) < ⟨_, hy⟩ := by simp [hxy]
  obtain ⟨z, hz, hz'⟩ := exists_between this
  simp only [← Subtype.coe_lt_coe] at hz hz'
  refine ⟨WithBot.unbot z (hz.trans_le' (by simp)).ne', ⟨?_, ?_⟩, ?_⟩
  · simp
  · rw [← WithBot.coe_lt_coe]
    simp [hz.trans_le]
  · rw [← WithBot.coe_lt_coe]
    simp [hz'.trans_le']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DenselyOrdered/Variant295b890be658e6695c228c641656e08c3bec429f64fff75ffd047243bdab7586.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DenselyOrdered/Variant295b890be658e6695c228c641656e08c3bec429f64fff75ffd047243bdab7586.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9bcb249f6c07bd9b34f80298271a986b42f1dc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
