# toSingle₀Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65c37f6b5a7ea0759bbb125b97a53883f06e324a9f8c777f5a36941d2f75cdf6",
  "kind": "def",
  "lexical_name": "toSingle₀Equiv",
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
  "slug": "tosingle-equiv--1004ae6153c59a905d9ab281",
  "source": {
    "blob": "69ace6a6831676016eb000e6333437c17f47bc60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1004ae6153c59a905d9ab28178d1958b6a124a5d805c4a510b81986479282bf6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65c37f6b5a7ea0759bbb125b97a53883f06e324a9f8c777f5a36941d2f75cdf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSingle₀Equiv (C : ChainComplex V ℕ) (X : V) :
    (C ⟶ (single₀ V).obj X) ≃ { f : C.X 0 ⟶ X // C.d 1 0 ≫ f = 0 } where
  toFun f :=
    ⟨f.f 0, by
      rw [← f.comm 1 0]
      simp⟩
  invFun f :=
    { f := fun i =>
        match i with
        | 0 => f.1
        | n + 1 => 0
      comm' := fun i j h => by
        rcases i with (_|_|i) <;> cases j <;> simp only [single₀_obj_X_d, comp_zero]
        · rw [C.shape, zero_comp]
          simp
        · exact f.2.symm
        · rw [C.shape, zero_comp]
          exact i.succ_succ_ne_one.symm }
  left_inv f := by
    ext i
    rcases i with ⟨⟩
    · rfl
    · dsimp
      ext
  right_inv := by aesop_cat
#align chain_complex.to_single₀_equiv ChainComplex.toSingle₀Equiv

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ace6a6831676016eb000e6333437c17f47bc60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
