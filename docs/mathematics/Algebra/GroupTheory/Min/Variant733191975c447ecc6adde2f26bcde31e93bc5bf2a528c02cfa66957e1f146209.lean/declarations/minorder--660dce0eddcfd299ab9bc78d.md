# minOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b1ced396e12041d5c02bd3419b971bee2ad8ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2457004-110a-d876-1044-8ae01694901d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e85c9798-1cf0-5969-3a51-b110d5120fcc",
  "kind": "lemma",
  "lexical_name": "minOrder",
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
  "slug": "minorder--660dce0eddcfd299ab9bc78d",
  "source": {
    "blob": "3b1ced396e12041d5c02bd3419b971bee2ad8ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:660dce0eddcfd299ab9bc78ddad9f1a1f1687747585310af2045e19a2e090c66",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e85c9798-1cf0-5969-3a51-b110d5120fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma minOrder {n : ℕ} (hn : n ≠ 0) (hn₁ : n ≠ 1) : minOrder (ZMod n) = n.minFac := by
  have : Fact (1 < n) := ⟨one_lt_iff_ne_zero_and_ne_one.mpr ⟨hn, hn₁⟩⟩
  classical
  have : (↑(n / n.minFac) : ZMod n) ≠ 0 := by
    rw [Ne, ringChar.spec, ringChar.eq (ZMod n) n]
    exact
      not_dvd_of_pos_of_lt (Nat.div_pos (minFac_le hn.bot_lt) n.minFac_pos)
        (div_lt_self hn.bot_lt (minFac_prime hn₁).one_lt)
  refine ((minOrder_le_natCard (zmultiples_eq_bot.not.2 this) <| toFinite _).trans ?_).antisymm <|
    le_minOrder_iff_forall_addSubgroup.2 fun s hs _ ↦ ?_
  · rw [Nat.card_zmultiples, ZMod.addOrderOf_coe _ hn,
      gcd_eq_right (div_dvd_of_dvd n.minFac_dvd), Nat.div_div_self n.minFac_dvd hn]
  · haveI : Nontrivial s := s.bot_or_nontrivial.resolve_left hs
    exact WithTop.coe_le_coe.2 <| minFac_le_of_dvd Finite.one_lt_card <|
      (card_addSubgroup_dvd_card _).trans n.card_zmod.dvd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Min/Variant733191975c447ecc6adde2f26bcde31e93bc5bf2a528c02cfa66957e1f146209.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ced396e12041d5c02bd3419b971bee2ad8ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
