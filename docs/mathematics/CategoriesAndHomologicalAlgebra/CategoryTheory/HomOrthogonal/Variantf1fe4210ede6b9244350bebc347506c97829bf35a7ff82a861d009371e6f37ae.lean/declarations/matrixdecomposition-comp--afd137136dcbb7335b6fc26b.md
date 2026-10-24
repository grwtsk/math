# matrixDecomposition_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "871372768bf403abb4280962c3276dba2411b416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df6d59b1-7103-8129-bc5b-6f9a667e4dbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67d31bfe-0b4f-4de8-f1ba-db2ffe111b6e",
  "kind": "theorem",
  "lexical_name": "matrixDecomposition_comp",
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
  "slug": "matrixdecomposition-comp--afd137136dcbb7335b6fc26b",
  "source": {
    "blob": "871372768bf403abb4280962c3276dba2411b416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd137136dcbb7335b6fc26bf874b3b1fe5e653b262203b8a125ef9447126f06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67d31bfe-0b4f-4de8-f1ba-db2ffe111b6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixDecomposition_comp (o : HomOrthogonal s) {α β γ : Type} [Finite α] [Fintype β]
    [Finite γ] {f : α → ι} {g : β → ι} {h : γ → ι} (z : (⨁ fun a => s (f a)) ⟶ ⨁ fun b => s (g b))
    (w : (⨁ fun b => s (g b)) ⟶ ⨁ fun c => s (h c)) (i : ι) :
    o.matrixDecomposition (z ≫ w) i = o.matrixDecomposition w i * o.matrixDecomposition z i := by
  ext ⟨c, ⟨⟩⟩ ⟨a, j_property⟩
  simp only [Set.mem_preimage, Set.mem_singleton_iff] at j_property
  simp only [Matrix.mul_apply, Limits.biproduct.components,
    HomOrthogonal.matrixDecomposition_apply, Category.comp_id, Category.id_comp, Category.assoc,
    End.mul_def, eqToHom_refl, eqToHom_trans_assoc]
  conv_lhs => rw [← Category.id_comp w, ← biproduct.total]
  simp only [Preadditive.sum_comp, Preadditive.comp_sum]
  apply Finset.sum_congr_set
  · simp
  · intro b nm
    simp only [Set.mem_preimage, Set.mem_singleton_iff] at nm
    simp only [Category.assoc]
    convert! comp_zero
    convert! comp_zero
    convert! comp_zero
    convert! comp_zero
    simp only [o.eq_zero nm]

section

variable {R : Type*} [Semiring R] [Linear R C]

set_option backward.defeqAttrib.useBackward true in
/-- `HomOrthogonal.MatrixDecomposition` as an `R`-linear equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `871372768bf403abb4280962c3276dba2411b416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
