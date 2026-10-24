# center_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2257447a-eb3c-c96a-a965-de6bb44d544c",
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
  "slug": "center-eq-bot--a6a59c724838b01bc6ef59fd",
  "source": {
    "blob": "6e3216d0813d5379f769dc177fcf5d83d9e1837f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 357,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a59c724838b01bc6ef59fd4057f6fe6d2e267d695368e678591d74054685eb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2257447a-eb3c-c96a-a965-de6bb44d544c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–391.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3216d0813d5379f769dc177fcf5d83d9e1837f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
