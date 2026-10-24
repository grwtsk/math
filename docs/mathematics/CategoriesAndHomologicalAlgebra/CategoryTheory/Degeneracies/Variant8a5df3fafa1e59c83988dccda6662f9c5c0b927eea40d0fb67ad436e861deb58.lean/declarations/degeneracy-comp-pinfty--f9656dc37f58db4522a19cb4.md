# degeneracy_comp_PInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed3017c4598005e96f535efa92b4eea7ddb04b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cf3f3da-c341-d085-380a-ef3710478a4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d6f8b8e-c8ec-dcff-c792-e5356bde6680",
  "kind": "theorem",
  "lexical_name": "degeneracy_comp_PInfty",
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
  "slug": "degeneracy-comp-pinfty--f9656dc37f58db4522a19cb4",
  "source": {
    "blob": "6ed3017c4598005e96f535efa92b4eea7ddb04b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9656dc37f58db4522a19cb40dcaff52788a7bb16cfec6c45c945dba2ff91feb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d6f8b8e-c8ec-dcff-c792-e5356bde6680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degeneracy_comp_PInfty (X : SimplicialObject C) (n : ℕ) {Δ' : SimplexCategory}
    (θ : ([n] : SimplexCategory) ⟶ Δ') (hθ : ¬Mono θ) : X.map θ.op ≫ PInfty.f n = 0 := by
  rw [SimplexCategory.mono_iff_injective] at hθ
  cases n
  · exfalso
    apply hθ
    intro x y h
    fin_cases x
    fin_cases y
    rfl
  · obtain ⟨i, α, h⟩ := SimplexCategory.eq_σ_comp_of_not_injective θ hθ
    rw [h, op_comp, X.map_comp, assoc, show X.map (SimplexCategory.σ i).op = X.σ i by rfl,
      σ_comp_PInfty, comp_zero]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.degeneracy_comp_P_infty AlgebraicTopology.DoldKan.degeneracy_comp_PInfty

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degeneracies/Variant8a5df3fafa1e59c83988dccda6662f9c5c0b927eea40d0fb67ad436e861deb58.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed3017c4598005e96f535efa92b4eea7ddb04b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
