# shell_cardinality_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51b1717b11ddaf030cafd80181cc99e1db12cdaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43304851-26f6-fae4-2388-5191591182cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2972f025-3962-09f7-587b-e2bcfbf638fe",
  "kind": "theorem",
  "lexical_name": "shell_cardinality_eq",
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
  "slug": "shell-cardinality-eq--d7b4f83708c188c044134f49",
  "source": {
    "blob": "51b1717b11ddaf030cafd80181cc99e1db12cdaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b4f83708c188c044134f4927a125d2fdadc743e70156968a2ac93017e99d47",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2972f025-3962-09f7-587b-e2bcfbf638fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_cardinality_eq
    (s : GridShape) :
    Fintype.card {c : Cell (expandedShape s) // IsShellCell c}
      = shellCardinality s.rows s.cols := by
  classical
  let centerSet : Set (Cell (expandedShape s)) := {c | IsCenterCell c}
  haveI : Fintype (↥(centerSetᶜ) : Sort _) := by
    dsimp [centerSet, Set.compl]
    infer_instance
  have hs :
      Fintype.card {c : Cell (expandedShape s) // IsShellCell c}
        = Fintype.card (↥(centerSetᶜ) : Sort _) := by
    refine Fintype.card_congr ?e
    refine
      { toFun := ?toFun
        invFun := ?invFun
        left_inv := ?left_inv
        right_inv := ?right_inv }
    · intro c
      exact ⟨c.1, by
        change ¬ IsCenterCell c.1
        exact c.2⟩
    · intro c
      exact ⟨c.1, by
        change ¬ IsCenterCell c.1
        exact c.2⟩
    · intro c
      cases c
      rfl
    · intro c
      cases c
      rfl
  have hcompl :
      Fintype.card (↥(centerSetᶜ) : Sort _) =
        Fintype.card (Cell (expandedShape s)) -
          Fintype.card (↥centerSet : Sort _) := by
    exact Fintype.card_compl_set centerSet
  have htotal :
      Fintype.card (Cell (expandedShape s)) =
        (s.rows + 2) * (s.cols + 2) := by
    change Fintype.card (Fin (s.rows + 2) × Fin (s.cols + 2)) =
      (s.rows + 2) * (s.cols + 2)
    calc
      Fintype.card (Fin (s.rows + 2) × Fin (s.cols + 2))
          = Fintype.card (Fin (s.rows + 2)) *
              Fintype.card (Fin (s.cols + 2)) := by
            exact Fintype.card_prod (Fin (s.rows + 2)) (Fin (s.cols + 2))
      _ = (s.rows + 2) * (s.cols + 2) := by
            rw [Fintype.card_fin, Fintype.card_fin]
  have hcenter :
      Fintype.card (↥centerSet : Sort _) = s.rows * s.cols := by
    change Fintype.card {c : Cell (expandedShape s) // IsCenterCell c} =
      s.rows * s.cols
    exact center_cardinality_eq s
  rw [hs, hcompl, htotal, hcenter]
  have hexpand :
      (s.rows + 2) * (s.cols + 2) =
        s.rows * s.cols + shellCardinality s.rows s.cols := by
    simp [shellCardinality]
    ring
  rw [hexpand, Nat.add_sub_cancel_left]

end Expansion
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b1717b11ddaf030cafd80181cc99e1db12cdaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
