# wellFounded_of_trans_of_irrefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e019bcb5-3919-f001-d7a7-23060e21c221",
  "kind": "theorem",
  "lexical_name": "wellFounded_of_trans_of_irrefl",
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
  "slug": "wellfounded-of-trans-of-irrefl--854762d92ca5e3dba9cb92da",
  "source": {
    "blob": "0a3b63ab14d3111c4b55f4703c466716a2365405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 902,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854762d92ca5e3dba9cb92da2471034212c14b39b34b68759e31b1b8a685e149",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e019bcb5-3919-f001-d7a7-23060e21c221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_of_trans_of_irrefl (r : α → α → Prop) [IsTrans α r] [IsIrrefl α r] :
    WellFounded r := by
  classical
  cases nonempty_fintype α
  have :
    ∀ x y, r x y → (univ.filter fun z => r z x).card < (univ.filter fun z => r z y).card :=
    fun x y hxy =>
    Finset.card_lt_card <| by
      simp only [Finset.lt_iff_ssubset.symm, lt_iff_le_not_le, Finset.le_iff_subset,
          Finset.subset_iff, mem_filter, true_and_iff, mem_univ, hxy];
      exact
        ⟨fun z hzx => _root_.trans hzx hxy,
          not_forall_of_exists_not ⟨x, not_imp.2 ⟨hxy, irrefl x⟩⟩⟩
  exact Subrelation.wf (this _ _) (measure _).wf
#align finite.well_founded_of_trans_of_irrefl Finite.wellFounded_of_trans_of_irrefl

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant206e7fb0093f814c1c661edf79c85df2269476c3fbf4cc8bf72468fcb39ae03e.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3b63ab14d3111c4b55f4703c466716a2365405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
