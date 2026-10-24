# sum_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b00283b-1de6-c518-65f0-eecdbecd8eae",
  "kind": "theorem",
  "lexical_name": "sum_basis",
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
  "slug": "sum-basis--a4de993db7c396a80d9f866e",
  "source": {
    "blob": "20da6377b619e0fb89a973cd5127464ccb1cf0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4de993db7c396a80d9f866eccd2d0209b4f25dc3ce9f2da3bd13749c769514d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b00283b-1de6-c518-65f0-eecdbecd8eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_basis (hvs : Set.InjOn v s) (hs : s.Nonempty) :
    ∑ j in s, Lagrange.basis s v j = 1 := by
  refine' eq_of_degrees_lt_of_eval_index_eq s hvs (lt_of_le_of_lt (degree_sum_le _ _) _) _ _
  · rw [Nat.cast_withBot, Finset.sup_lt_iff (WithBot.bot_lt_coe s.card)]
    intro i hi
    rw [degree_basis hvs hi, Nat.cast_withBot, WithBot.coe_lt_coe]
    exact Nat.pred_lt (card_ne_zero_of_mem hi)
  · rw [degree_one, ← WithBot.coe_zero, Nat.cast_withBot, WithBot.coe_lt_coe]
    exact Nonempty.card_pos hs
  · intro i hi
    rw [eval_finset_sum, eval_one, ← add_sum_erase _ _ hi, eval_basis_self hvs hi,
      add_right_eq_self]
    refine' sum_eq_zero fun j hj => _
    rcases mem_erase.mp hj with ⟨hij, _⟩
    rw [eval_basis_of_ne hij hi]
#align lagrange.sum_basis Lagrange.sum_basis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20da6377b619e0fb89a973cd5127464ccb1cf0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
