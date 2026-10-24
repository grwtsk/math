# center_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1612c61b-2512-6b4c-9aac-e9292c6ef65b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b875e271-5fef-b7ea-1446-decdbb07b42f",
  "kind": "theorem",
  "lexical_name": "center_eq_bot",
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
  "slug": "center-eq-bot--fa6ec73976a12bec3ef7333f",
  "source": {
    "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 349,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6ec73976a12bec3ef7333f394d65b43f7094303fb4753ac1e2c117fa90ddf8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b875e271-5fef-b7ea-1446-decdbb07b42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_eq_bot (hα4 : 4 ≤ Nat.card α) :
    Subgroup.center (alternatingGroup α) = ⊥ := by
  rw [eq_bot_iff]
  rintro ⟨g, hg⟩ hg'
  simp only [Subgroup.mem_bot]
  simp only [← Subtype.coe_inj, Subgroup.coe_one, ← support_eq_empty_iff,
    Finset.eq_empty_iff_forall_notMem]
  intro a ha
  have hab : g a ≠ a := by rw [← mem_support]; exact ha
  have : 2 ≤ (({a, g a} : Finset α)ᶜ).card := by
    rw [← Nat.add_le_add_iff_left, Finset.card_add_card_compl]
    rw [← Nat.card_eq_fintype_card]
    rw [Finset.card_pair hab.symm]
    exact hα4
  rw [← Nat.lt_iff_add_one_le, Finset.one_lt_card_iff] at this
  obtain ⟨c, d, hc, hd, hcd⟩ := this
  simp only [Finset.compl_insert, Finset.mem_erase, ← ne_eq, Finset.mem_compl,
    Finset.mem_singleton] at hc hd
  let k := swap (g a) d * swap (g a) c
  have hka : k • a = a := by
    simp only [Perm.smul_def, coe_mul, Function.comp_apply, k]
    rw [swap_apply_of_ne_of_ne (x := a) hab.symm hc.1.symm]
    rw [swap_apply_of_ne_of_ne hab.symm hd.1.symm]
  have hkga : k • (g a) = c := by
    simp only [Perm.smul_def, coe_mul, Function.comp_apply, swap_apply_left, k]
    rw [swap_apply_of_ne_of_ne hc.2 hcd]
  suffices k • (⟨g, hg⟩ : alternatingGroup α) • a ≠ c by
    apply this; simp [← hkga]
  suffices k • (⟨g, hg⟩ : alternatingGroup α) • a = (⟨g, hg⟩ : alternatingGroup α) • k • a by
    rw [this, hka]; exact hc.right.symm
  rw [Subgroup.mem_center_iff] at hg'
  suffices k ∈ alternatingGroup α by
    simp only [← Subgroup.mk_smul k this, ← mul_smul, hg']
  simp [k, hc.2.symm, hd.2.symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6fd44157ab58b460b68f932b360e762a10660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
