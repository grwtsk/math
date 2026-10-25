# cardinalMk_le_max_aleph0_of_finite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "808e30f3dd500e084a1f3d2787a146f1fc848d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77037c94-f6a9-733e-632f-ad2482fde7a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f5c6b73-c248-7b9c-9b62-09c18d690e4f",
  "kind": "theorem",
  "lexical_name": "cardinalMk_le_max_aleph0_of_finite'",
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
  "slug": "cardinalmk-le-max-aleph0-of-finite--e477c3c8b55ddc2ce2810d17",
  "source": {
    "blob": "808e30f3dd500e084a1f3d2787a146f1fc848d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e477c3c8b55ddc2ce2810d17c456ba48a1d6be82c16a5f4cfaf8d3372255cbfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f5c6b73-c248-7b9c-9b62-09c18d690e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_le_max_aleph0_of_finite' [∀ a, Finite (β a)] :
    #(WType β) ≤ max (lift.{v} #α) ℵ₀ :=
  (isEmpty_or_nonempty α).elim
    (by
      intro h
      rw [Cardinal.mk_eq_zero (WType β)]
      exact zero_le _)
    fun hn =>
    let m := max (lift.{v} #α) ℵ₀
    cardinalMk_le_of_le' <|
      calc
        (Cardinal.sum fun a => m ^ lift.{u} #(β a)) ≤ lift.{v} #α * ⨆ a, m ^ lift.{u} #(β a) :=
          Cardinal.sum_le_iSup_lift _
        _ ≤ m * ⨆ a, m ^ lift.{u} #(β a) := mul_le_mul' (le_max_left _ _) le_rfl
        _ = m :=
          mul_eq_left (le_max_right _ _)
              (ciSup_le' fun _ => pow_le (le_max_right _ _) (lt_aleph0_of_finite _)) <|
            pos_iff_ne_zero.1 <|
              Order.succ_le_iff.1
                (by
                  rw [succ_zero]
                  obtain ⟨a⟩ : Nonempty α := hn
                  refine le_trans ?_ (le_ciSup (bddAbove_range _) a)
                  rw [← power_zero]
                  exact
                    power_le_power_left
                      (pos_iff_ne_zero.1 (aleph0_pos.trans_le (le_max_right _ _))) (zero_le _))

@[deprecated (since := "2024-11-10")]
alias cardinal_mk_le_max_aleph0_of_finite' := cardinalMk_le_max_aleph0_of_finite'

variable {β : α → Type u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variant914e12d880f09de190e783018cbf578312888d651022df0cd293ac41d06c96bf.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `808e30f3dd500e084a1f3d2787a146f1fc848d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
