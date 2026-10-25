# encode_mark

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57b47ee7-22df-1173-5c17-5a31e6a9e0f7",
  "kind": "theorem",
  "lexical_name": "encode_mark",
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
  "slug": "encode-mark--6732bc53fbb6cf0322c4db8a",
  "source": {
    "blob": "3462d8a5a4c7b70eb34c05d74626edd4369bd8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6732bc53fbb6cf0322c4db8a190862843d24ce8e173b1e17172a0abbc01d802c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57b47ee7-22df-1173-5c17-5a31e6a9e0f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_mark {T p c₀ : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (t u : Fin 8) (hp : HasType P Γ p (U.apply T)) (mp : WellModed γ p .data)
    (hc : HasType P Γ c₀ T) (mc : WellModed γ c₀ .data) :
    Proves P Γ γ (L.code.sign (t == u) (R.mark L.code u T c₀ (R.encode U L.code t T p))) := by
  have hv := h.tagged_typed hT mT (queryTag u) hc mc
  have he := h.encode_evaluation hU hT mT t hp mp hv.1 hv.2
  have h₀ := h.tagged_tag hT mT 0 (queryTag u) hc mc
  have hq := h.tagged_tag hT mT (queryTag t) (queryTag u) hc mc
  have hd := h.encode_typed hU hT mT t hp mp
  have hf := (h.first.sound (h.tower_sorted hT 4) (h.tower_mode mT 4)).2 _ _ hd.1 hd.2 ⟨hv.1,hv.2⟩
  have f₀ := (h.tagBody_family hT mT (queryBits 0)).instantiate hv.1 hv.2
  have fr := (h.recoveryBody_family hT mT 4 (hU.evalCallback_family hT mT hp mp)).instantiate
    hv.1 hv.2
  have fq := (h.tagBody_family hT mT (queryBits (queryTag t))).instantiate hv.1 hv.2
  have zne : (0 : Fin 9) ≠ queryTag u := (queryTag_ne_zero u).symm
  simp only [beq_eq_false_iff_ne.mpr zne,LogicCode.sign,Bool.false_eq_true,ite_false] at h₀
  by_cases htu : t = u
  · subst u
    simp only [beq_self_eq_true,LogicCode.sign,ite_true] at hq ⊢
    change Proves P Γ γ (R.first.observe _ _ _)
    pts_pl L using [he,h₀,hq]
  · have qne : queryTag t ≠ queryTag u := fun hh => htu (queryTag_injective hh)
    simp only [beq_eq_false_iff_ne.mpr htu,beq_eq_false_iff_ne.mpr qne,LogicCode.sign,
      Bool.false_eq_true,ite_false] at hq ⊢
    change Proves P Γ γ (L.neg (R.first.observe _ _ _))
    pts_pl L using [he,h₀,hq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3462d8a5a4c7b70eb34c05d74626edd4369bd8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
