# insertEntry_perm_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6979,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08ea06d1-5ed4-a8ca-06b0-26ac0901de2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90f4531b-5a56-bf32-1b0d-8c5b10643548",
  "kind": "theorem",
  "lexical_name": "insertEntry_perm_filter",
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
  "slug": "insertentry-perm-filter--8bd366f8c4f24314559756e6",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7025,
    "line": 6979,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bd366f8c4f24314559756e6a40570d5b2ce26860eac5d183dc74b675c40d193",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f4531b-5a56-bf32-1b0d-8c5b10643548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6979–7025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertEntry_perm_filter [BEq α] [EquivBEq α]
    (k : α) (v : β k) {l : List ((a : α) × β a)} (hl : DistinctKeys l) :
    (insertEntry k v l).Perm <| ⟨k, v⟩ :: l.filter (¬k == ·.1) := by
  rw [insertEntry]
  by_cases eq : containsKey k l
  case neg =>
    simp only [eq, cond_false, Bool.not_eq_true, Bool.decide_eq_false, List.perm_cons]
    suffices (List.filter (fun x => !k == x.fst) l) = l by rw [this]
    simp only [List.filter_eq_self, Bool.not_eq_eq_eq_not, Bool.not_true]
    intro ⟨e₁,e₂⟩ mem
    simp only
    by_cases h : (k == e₁)
    case pos =>
      rw [containsKey_congr h] at eq
      rw [containsKey_of_mem mem] at eq
      contradiction
    case neg => simp [h]
  case pos =>
    simp only [eq, cond_true, Bool.not_eq_true, Bool.decide_eq_false]
    induction l
    case nil => simp at eq
    case cons h t ih =>
      simp only [replaceEntry, List.filter_cons, Bool.not_eq_eq_eq_not, Bool.not_true]
      rw [distinctKeys_cons_iff] at hl
      by_cases heq : (h.fst == k)
      case pos =>
        simp only [heq, cond_true, BEq.symm heq, Bool.true_eq_false, ↓reduceIte, List.perm_cons]
        suffices (List.filter (fun x => !k == x.fst) t) = t by rw [this]
        simp only [List.filter_eq_self, Bool.not_eq_eq_eq_not, Bool.not_true]
        intro ⟨e₁, e₂⟩ mem
        by_cases heq2 : (k == e₁)
        case neg => simp [heq2]
        case pos =>
          replace hl := hl.2
          have ce := containsKey_of_mem mem
          simp only at ce
          rw [containsKey_congr <| BEq.trans heq heq2, ce] at hl
          contradiction
      case neg =>
        simp only [Bool.not_eq_true] at heq
        simp [BEq.symm_false, heq]
        apply Perm.trans ?_ (by apply Perm.swap)
        simp only [List.perm_cons]
        apply ih hl.1
        rw [containsKey_cons, heq] at eq
        simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L6979).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
