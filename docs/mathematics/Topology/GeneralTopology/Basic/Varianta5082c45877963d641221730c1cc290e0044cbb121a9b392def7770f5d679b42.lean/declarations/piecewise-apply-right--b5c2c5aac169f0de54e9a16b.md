# piecewise'_apply_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc42906995a029460daf3da9261d912b6f099641",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e232e1b-06cc-6f0a-9303-95c52783e0f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3cebc53-079b-6fc5-fef2-f126094b366e",
  "kind": "lemma",
  "lexical_name": "piecewise'_apply_right",
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
  "slug": "piecewise-apply-right--b5c2c5aac169f0de54e9a16b",
  "source": {
    "blob": "fc42906995a029460daf3da9261d912b6f099641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 601,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c2c5aac169f0de54e9a16bf43700c1ff5bb4a2eeb131ce3f00c36d494ce017",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3cebc53-079b-6fc5-fef2-f126094b366e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piecewise'_apply_right {C₀ C₁ C₂ : Set X} (h₀ : C₀ ⊆ C₁ ∪ C₂) (h₁ : IsClosed C₁)
    (h₂ : IsClosed C₂) (f₁ : LocallyConstant C₁ Z) (f₂ : LocallyConstant C₂ Z)
    [DecidablePred (· ∈ C₁)] (hf : ∀ x (hx : x ∈ C₁ ∩ C₂), f₁ ⟨x, hx.1⟩ = f₂ ⟨x, hx.2⟩)
    (x : C₀) (hx : x.val ∈ C₂) :
    piecewise' h₀ h₁ h₂ f₁ f₂ hf x = f₂ ⟨x.val, hx⟩ := by
  letI : ∀ j : C₀, Decidable (j ∈ Subtype.val ⁻¹' C₁) := fun j ↦ decidable_of_iff (↑j ∈ C₁) Iff.rfl
  rw [piecewise', piecewise_apply_right (f := (f₁.comap
    ⟨(restrictPreimage C₁ ((↑) : C₀ → X)), continuous_subtype_val.restrictPreimage⟩))
    (hx := hx)]
  rfl

end Piecewise

end LocallyConstant
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc42906995a029460daf3da9261d912b6f099641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
