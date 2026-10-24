# CompleteLatticeHom.apply_limsup_iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9519ba31-b8f1-d0e2-1dc2-8fb5aa649452",
  "kind": "theorem",
  "lexical_name": "CompleteLatticeHom.apply_limsup_iterate",
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
  "slug": "completelatticehom-apply-limsup-iterate--2731b4defa1fe526efbd41df",
  "source": {
    "blob": "2a6c9b1c992f71b1d8cb64deba8c95c2f581e5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 881,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2731b4defa1fe526efbd41df41836dac94241cb9b1663fc8ad1cdb321b5d0e30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9519ba31-b8f1-d0e2-1dc2-8fb5aa649452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompleteLatticeHom.apply_limsup_iterate (f : CompleteLatticeHom α α) (a : α) :
    f (limsup (fun n => f^[n] a) atTop) = limsup (fun n => f^[n] a) atTop := by
  rw [limsup_eq_iInf_iSup_of_nat', map_iInf]
  simp_rw [_root_.map_iSup, ← Function.comp_apply (f := f), ← Function.iterate_succ' f,
    ← Nat.add_succ]
  conv_rhs => rw [iInf_split _ ((· < ·) (0 : ℕ))]
  simp only [not_lt, le_zero_iff, iInf_iInf_eq_left, add_zero, iInf_nat_gt_zero_eq, left_eq_inf]
  refine' (iInf_le (fun i => ⨆ j, f^[j + (i + 1)] a) 0).trans _
  simp only [zero_add, Function.comp_apply, iSup_le_iff]
  exact fun i => le_iSup (fun i => f^[i] a) (i + 1)
#align filter.complete_lattice_hom.apply_limsup_iterate Filter.CompleteLatticeHom.apply_limsup_iterate

/-- If `f : α → α` is a morphism of complete lattices, then the liminf of its iterates of any
`a : α` is a fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant287edb4a5b16f2c44397b675c8fc8eec88ad4f0063ae25930f3fbafb54609771.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6c9b1c992f71b1d8cb64deba8c95c2f581e5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
