# typeIIPrefix_eq_factorAtom_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f71576de-ed9b-d4eb-703b-27dbfeb7722f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2098d4dc-9a9d-af48-ee26-53bdc4e1f5ed",
  "kind": "theorem",
  "lexical_name": "typeIIPrefix_eq_factorAtom_sum",
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
  "slug": "typeiiprefix-eq-factoratom-sum--cbb5b99c419e9a72c70b9a92",
  "source": {
    "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb5b99c419e9a72c70b9a92d4d6f853dcb22b9fbaa68cdbd446eb55e13e5064",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2098d4dc-9a9d-af48-ee26-53bdc4e1f5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem typeIIPrefix_eq_factorAtom_sum {N x : ℕ} (hx : x ≤ 2 * N) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      ∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
  let U := vaughanFourthRootCutoff N
  have hfiber (n : Fin (x + 1)) :
      (((conductorThreeIntegerValue n.1 : ℝ) *
          vaughanTypeIIScalar U U n.1 : ℝ) : ℂ) =
        ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
    symm
    simpa [U, prefixScaleIndex] using
      (vaughanTypeIIFactor_fiber_eq_component N (prefixScaleIndex hx n))
  calc
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
        ∑ n : Fin (x + 1),
          (((conductorThreeIntegerValue n.1 : ℝ) *
            vaughanTypeIIScalar U U n.1 : ℝ) : ℂ) := by
              rw [Fin.sum_univ_eq_sum_range (fun n : ℕ ↦
                (((conductorThreeIntegerValue n : ℝ) *
                  vaughanTypeIIScalar U U n : ℝ) : ℂ))]
              simp [conductorThreeVaughanTypeIIPrefix, vaughanPrefix, U]
    _ = ∑ n : Fin (x + 1), ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
              apply Fintype.sum_congr
              exact hfiber
    _ = ∑ a : VaughanTypeIIFactorAtom N, ∑ n : Fin (x + 1),
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 :=
      Finset.sum_comm
    _ = ∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
      apply Fintype.sum_congr
      intro a
      by_cases ha : (vaughanTypeIIFactorIndex a).1 ≤ x
      · let n₀ : Fin (x + 1) :=
          ⟨(vaughanTypeIIFactorIndex a).1, Nat.lt_succ_iff.mpr ha⟩
        rw [Finset.sum_eq_single n₀]
        · simp [ha, n₀, prefixScaleIndex]
        · intro n _ hne
          have hindex : vaughanTypeIIFactorIndex a ≠ prefixScaleIndex hx n := by
            intro heq
            apply hne
            exact Fin.ext (congrArg Fin.val heq).symm
          simp [hindex]
        · simp
      · have hindex : ∀ n : Fin (x + 1),
            vaughanTypeIIFactorIndex a ≠ prefixScaleIndex hx n := by
          intro n heq
          apply ha
          have hv := congrArg Fin.val heq
          calc
            (vaughanTypeIIFactorIndex a).1 = n.1 := by
              simpa [prefixScaleIndex] using hv
            _ ≤ x := Nat.le_of_lt_succ n.2
        simp [ha, hindex]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e752bd8f3a50dc445e316a26f7fc21873d657866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
