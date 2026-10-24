# ConditionallyCompleteLinearOrder.toSuccOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52c7e1bab22d8d4964c728bd4635a88b10969538e033218065e200d11b67e478",
  "kind": "def",
  "lexical_name": "ConditionallyCompleteLinearOrder.toSuccOrder",
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
  "slug": "conditionallycompletelinearorder-tosuccorder--8d1d1898309af41993bd7c14",
  "source": {
    "blob": "16816b7f097dd6f36a597442e932632d2a9aab71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d1d1898309af41993bd7c142c2f101be68fa45774850abd2b5a932fb0678412",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52c7e1bab22d8d4964c728bd4635a88b10969538e033218065e200d11b67e478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ConditionallyCompleteLinearOrder.toSuccOrder [WellFoundedLT α] :
    SuccOrder α where
  succ a := if IsMax a then a else sInf {b | a < b}
  le_succ a := by
    by_cases h : IsMax a
    · simp [h]
    · simp only [h, ↓reduceIte]
      rw [not_isMax_iff] at h
      exact le_csInf h (fun b => le_of_lt)
  max_of_succ_le hs := by
    by_contra h
    simp [h] at hs
    rw [not_isMax_iff] at h
    exact hs.not_lt (csInf_mem h)
  succ_le_of_lt {a b} ha := by
    simp [ha.not_isMax]
    exact csInf_le ⟨a, fun _ hc => hc.le⟩ ha

end ConditionallyCompleteLinearOrder

section ConditionallyCompleteLinearOrderBot
variable [ConditionallyCompleteLinearOrderBot α] {f : ι → α} {s : Set α} {x : α}

/-- See `csSup_mem_of_not_isSuccPrelimit` for the `ConditionallyCompleteLinearOrder` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16816b7f097dd6f36a597442e932632d2a9aab71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
