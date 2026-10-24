# gauss_lemma_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2184bbe6ea6367c6054b500d9bb66c214cb5f83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39322203-5215-396b-b57c-282dee8bf1ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d81b489-116b-1b7c-bc98-ec983f3cdd03",
  "kind": "theorem",
  "lexical_name": "gauss_lemma_aux₁",
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
  "slug": "gauss-lemma-aux--b69807ed7013e3cf4c9af196",
  "source": {
    "blob": "2184bbe6ea6367c6054b500d9bb66c214cb5f83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 62,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69807ed7013e3cf4c9af196f42e998cf18f274248b168eca33158cdb4ce5431",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d81b489-116b-1b7c-bc98-ec983f3cdd03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gauss_lemma_aux₁ (p : ℕ) [Fact p.Prime] {a : ℤ} (hap : (a : ZMod p) ≠ 0) :
    (a ^ (p / 2) * (p / 2)! : ZMod p) =
     (-1 : ZMod p) ^ #{x ∈ Ico 1 (p / 2).succ | ¬ (a * x.cast : ZMod p).val ≤ p / 2} * (p / 2)! :=
  calc
    (a ^ (p / 2) * (p / 2)! : ZMod p) = ∏ x ∈ Ico 1 (p / 2).succ, a * x := by
      rw [prod_mul_distrib, ← prod_natCast, prod_Ico_id_eq_factorial, prod_const, card_Ico,
        Nat.add_one_sub_one]; simp
    _ = ∏ x ∈ Ico 1 (p / 2).succ, ↑((a * x : ZMod p).val) := by simp
    _ = ∏ x ∈ Ico 1 (p / 2).succ, (if (a * x : ZMod p).val ≤ p / 2 then (1 : ZMod p) else -1) *
        (a * x : ZMod p).valMinAbs.natAbs :=
      (prod_congr rfl fun _ _ => by
        simp only [natCast_natAbs_valMinAbs]
        split_ifs <;> simp)
    _ = (-1 : ZMod p) ^ #{x ∈ Ico 1 (p / 2).succ | ¬(a * x.cast : ZMod p).val ≤ p / 2} *
          ∏ x ∈ Ico 1 (p / 2).succ, ↑((a * x : ZMod p).valMinAbs.natAbs) := by
      rw [prod_mul_distrib, Finset.prod_ite]
      simp
    _ = (-1 : ZMod p) ^ #{x ∈ Ico 1 (p / 2).succ | ¬(a * x.cast : ZMod p).val ≤ p / 2} *
          (p / 2)! := by
      rw [← prod_natCast, Finset.prod_eq_multiset_prod,
        Ico_map_valMinAbs_natAbs_eq_Ico_map_id p a hap, ← Finset.prod_eq_multiset_prod,
        prod_Ico_id_eq_factorial]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant56d6e7fc758b9c989d94b096e4c9bd336ba99d21638268be58439764f1a586f3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2184bbe6ea6367c6054b500d9bb66c214cb5f83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
