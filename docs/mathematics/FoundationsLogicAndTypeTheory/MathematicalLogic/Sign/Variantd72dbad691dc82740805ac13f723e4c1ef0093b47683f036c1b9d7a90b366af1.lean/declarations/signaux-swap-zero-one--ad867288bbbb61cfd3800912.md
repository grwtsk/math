# signAux_swap_zero_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6f5c4f1-395b-100f-95e1-0c33598f135a",
  "kind": "theorem",
  "lexical_name": "signAux_swap_zero_one'",
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
  "slug": "signaux-swap-zero-one--ad867288bbbb61cfd3800912",
  "source": {
    "blob": "0dbd8f0cf4feaba620e7e66006c7e667527c2852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad867288bbbb61cfd38009128529b9c17b799095d26d5cb138e2fdfad56a69fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6f5c4f1-395b-100f-95e1-0c33598f135a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem signAux_swap_zero_one' (n : ℕ) : signAux (swap (0 : Fin (n + 2)) 1) = -1 :=
  show _ = ∏ x ∈ {(⟨1, 0⟩ : Σ _ : Fin (n + 2), Fin (n + 2))},
      if (Equiv.swap 0 1) x.1 ≤ swap 0 1 x.2 then (-1 : ℤˣ) else 1 by
    refine Eq.symm (prod_subset (fun ⟨x₁, x₂⟩ => by
      simp +contextual [mem_finPairsLT, Fin.one_pos]) fun a ha₁ ha₂ => ?_)
    rcases a with ⟨a₁, a₂⟩
    replace ha₁ : a₂ < a₁ := mem_finPairsLT.1 ha₁
    dsimp only
    rcases a₁.zero_le.eq_or_lt with (rfl | H)
    · exact absurd a₂.zero_le ha₁.not_le
    rcases a₂.zero_le.eq_or_lt with (rfl | H')
    · simp only [and_true, eq_self_iff_true, heq_iff_eq, mem_singleton, Sigma.mk.inj_iff] at ha₂
      have : 1 < a₁ := lt_of_le_of_ne (Nat.succ_le_of_lt ha₁)
        (Ne.symm (by intro h; apply ha₂; simp [h]))
      have h01 : Equiv.swap (0 : Fin (n + 2)) 1 0 = 1 := by simp
      rw [swap_apply_of_ne_of_ne (ne_of_gt H) ha₂, h01, if_neg this.not_le]
    · have le : 1 ≤ a₂ := Nat.succ_le_of_lt H'
      have lt : 1 < a₁ := le.trans_lt ha₁
      have h01 : Equiv.swap (0 : Fin (n + 2)) 1 1 = 0 := by simp only [swap_apply_right]
      rcases le.eq_or_lt with (rfl | lt')
      · rw [swap_apply_of_ne_of_ne H.ne' lt.ne', h01, if_neg H.not_le]
      · rw [swap_apply_of_ne_of_ne (ne_of_gt H) (ne_of_gt lt),
          swap_apply_of_ne_of_ne (ne_of_gt H') (ne_of_gt lt'), if_neg ha₁.not_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dbd8f0cf4feaba620e7e66006c7e667527c2852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
