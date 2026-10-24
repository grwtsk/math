# reflTransSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cbaeb8c86ba5820493849213190b7f611fa29562a5fd496824f16fdb7c07be3",
  "kind": "def",
  "lexical_name": "reflTransSymm",
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
  "slug": "refltranssymm--abbd5e3e2dea06ca784f8ead",
  "source": {
    "blob": "e546e922140aa5bf429dd7a9c8cf89f9489bf3cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abbd5e3e2dea06ca784f8eada28b07aa30338c1507a7139d1e4eb7561c3b6439",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cbaeb8c86ba5820493849213190b7f611fa29562a5fd496824f16fdb7c07be3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflTransSymm (p : Path x₀ x₁) : Homotopy (Path.refl x₀) (p.trans p.symm) where
  toFun x := p ⟨reflTransSymmAux x, reflTransSymmAux_mem_I x⟩
  continuous_toFun := by continuity
  map_zero_left := by simp [reflTransSymmAux]
  map_one_left x := by
    dsimp only [reflTransSymmAux, Path.coe_toContinuousMap, Path.trans]
    change _ = ite _ _ _
    split_ifs with h
    · rw [Path.extend, Set.IccExtend_of_mem]
      · norm_num
      · rw [unitInterval.mul_pos_mem_iff zero_lt_two]
        exact ⟨unitInterval.nonneg x, h⟩
    · rw [Path.symm, Path.extend, Set.IccExtend_of_mem]
      · simp only [Set.Icc.coe_one, one_mul, coe_mk_mk, Function.comp_apply]
        congr 1
        ext
        norm_num [sub_sub_eq_add_sub]
      · rw [unitInterval.two_mul_sub_one_mem_iff]
        exact ⟨(not_le.1 h).le, unitInterval.le_one x⟩
  prop' t x hx := by
    simp only [Set.mem_singleton_iff, Set.mem_insert_iff] at hx
    simp only [ContinuousMap.coe_mk, coe_toContinuousMap, Path.refl_apply]
    cases hx with
    | inl hx
    | inr hx =>
      rw [hx]
      norm_num [reflTransSymmAux]
#align path.homotopy.refl_trans_symm Path.Homotopy.reflTransSymm

/-- For any path `p` from `x₀` to `x₁`, we have a homotopy from the constant path based at `x₁` to
  `p.symm.trans p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e546e922140aa5bf429dd7a9c8cf89f9489bf3cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
