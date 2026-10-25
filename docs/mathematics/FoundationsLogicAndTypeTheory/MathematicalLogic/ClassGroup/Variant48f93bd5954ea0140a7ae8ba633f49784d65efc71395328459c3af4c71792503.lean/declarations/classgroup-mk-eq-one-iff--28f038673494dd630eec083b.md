# ClassGroup.mk_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2838de26-0ef9-357d-0ee8-317c52ad714a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30179958-12de-7461-7f79-dce92ddcb7f5",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk_eq_one_iff",
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
  "slug": "classgroup-mk-eq-one-iff--28f038673494dd630eec083b",
  "source": {
    "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f038673494dd630eec083ba13c1f851dc9b2b5a7cef71cc3109113b6048944",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30179958-12de-7461-7f79-dce92ddcb7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk_eq_one_iff {I : (FractionalIdeal R⁰ K)ˣ} :
    ClassGroup.mk I = 1 ↔ (I : Submodule R K).IsPrincipal := by
  rw [← (ClassGroup.equiv K).injective.eq_iff]
  simp only [equiv_mk, canonicalEquiv_self, RingEquiv.coe_mulEquiv_refl, QuotientGroup.mk'_apply,
    _root_.map_one, QuotientGroup.eq_one_iff, MonoidHom.mem_range, ext_iff, coe_toPrincipalIdeal,
    coe_mapEquiv, MulEquiv.refl_apply]
  refine ⟨fun ⟨x, hx⟩ => ⟨⟨x, by rw [← hx, coe_spanSingleton]⟩⟩, ?_⟩
  intro hI
  obtain ⟨x, hx⟩ := @Submodule.IsPrincipal.principal _ _ _ _ _ _ hI
  have hx' : (I : FractionalIdeal R⁰ K) = spanSingleton R⁰ x := by
    apply Subtype.coe_injective
    simp only [val_eq_coe, hx, coe_spanSingleton]
  refine ⟨Units.mk0 x ?_, ?_⟩
  · intro x_eq; apply Units.ne_zero I; simp [hx', x_eq]
  · simp [hx']
#align class_group.mk_eq_one_iff ClassGroup.mk_eq_one_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b31e1b20d6be8aabaf838d1636b5320aaba114b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
