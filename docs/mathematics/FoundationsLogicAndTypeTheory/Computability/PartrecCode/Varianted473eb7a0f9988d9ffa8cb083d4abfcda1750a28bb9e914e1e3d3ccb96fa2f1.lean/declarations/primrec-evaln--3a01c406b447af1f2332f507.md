# primrec_evaln

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 942,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc448705-d796-b605-eef6-26025ca18155",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e6bf9e7-feeb-19a8-c218-2c039c6cb6a5",
  "kind": "theorem",
  "lexical_name": "primrec_evaln",
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
  "slug": "primrec-evaln--3a01c406b447af1f2332f507",
  "source": {
    "blob": "6025514c4913aa2b9140b1f4b471951f60905025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 942,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a01c406b447af1f2332f50725f42f27afba168038902a26321d39d91981b8ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e6bf9e7-feeb-19a8-c218-2c039c6cb6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primrec_evaln : Primrec fun a : (ℕ × Code) × ℕ => evaln a.1.1 a.1.2 a.2 :=
  have :
    Primrec₂ fun (_ : Unit) (n : ℕ) =>
      let a := ofNat (ℕ × Code) n
      (List.range a.1).map (evaln a.1 a.2) :=
    Primrec.nat_strong_rec _ (hG.comp Primrec.snd).to₂ fun _ p => by
      simp only [G, prod_ofNat_val, ofNat_nat, List.length_map, List.length_range,
        Nat.pair_unpair, Option.some_inj]
      refine List.map_congr_left fun n => ?_
      have : List.range p = List.range (Nat.pair p.unpair.1 (encode (ofNat Code p.unpair.2))) := by
        simp
      rw [this]
      generalize p.unpair.1 = k
      generalize ofNat Code p.unpair.2 = c
      intro nk
      rcases k with - | k'
      · simp [evaln]
      let k := k' + 1
      simp only
      simp only [List.mem_range, Nat.lt_succ_iff] at nk
      have hg :
        ∀ {k' c' n},
          Nat.pair k' (encode c') < Nat.pair k (encode c) →
            lup ((List.range (Nat.pair k (encode c))).map fun n =>
              (List.range n.unpair.1).map (evaln n.unpair.1 (ofNat Code n.unpair.2))) (k', c') n =
            evaln k' c' n := by
        intro k₁ c₁ n₁ hl
        simp [lup, List.getElem?_range hl, evaln_map, Bind.bind, Option.bind_map]
      obtain - | - | - | - | ⟨cf, cg⟩ | ⟨cf, cg⟩ | ⟨cf, cg⟩ | cf := c <;>
        simp only [evaln, bind, nk, guard_true, pure, Option.bind_some, unpaired, pair_unpair]
      · obtain ⟨lf, lg⟩ := encode_lt_pair cf cg
        rw [hg (Nat.pair_lt_pair_right _ lf), hg (Nat.pair_lt_pair_right _ lg)]
        cases evaln k cf n
        · rfl
        cases evaln k cg n <;> rfl
      · obtain ⟨lf, lg⟩ := encode_lt_comp cf cg
        rw [hg (Nat.pair_lt_pair_right _ lg)]
        cases evaln k cg n
        · rfl
        simp [k, hg (Nat.pair_lt_pair_right _ lf)]
      · obtain ⟨lf, lg⟩ := encode_lt_prec cf cg
        rw [hg (Nat.pair_lt_pair_right _ lf)]
        cases n.unpair.2
        · rfl
        simp only
        rw [hg (Nat.pair_lt_pair_left _ k'.lt_succ_self)]
        cases evaln k' _ _
        · rfl
        simp [k, hg (Nat.pair_lt_pair_right _ lg)]
      · have lf := encode_lt_rfind' cf
        rw [hg (Nat.pair_lt_pair_right _ lf)]
        rcases evaln k cf n with - | x
        · rfl
        simp only [Option.bind_some]
        cases x with
        | zero => simp
        | succ _ => simpa using hg (Nat.pair_lt_pair_left _ k'.lt_succ_self)
  (Primrec.option_bind
    (Primrec.list_getElem?.comp (this.comp (_root_.Primrec.const ())
      (Primrec.encode_iff.2 Primrec.fst)) Primrec.snd) Primrec.snd.to₂).of_eq
    fun ⟨⟨k, c⟩, n⟩ => by simp [evaln_map, Option.bind_map]

end

section

open Computable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6025514c4913aa2b9140b1f4b471951f60905025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
