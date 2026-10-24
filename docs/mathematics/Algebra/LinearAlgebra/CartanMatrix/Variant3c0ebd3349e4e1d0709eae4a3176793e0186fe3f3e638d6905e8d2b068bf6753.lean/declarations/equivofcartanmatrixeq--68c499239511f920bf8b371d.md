# equivOfCartanMatrixEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43134e12bbb18eaef9ccd080b067d1ce7ab53df8995d657901415f24407467fc",
  "kind": "def",
  "lexical_name": "equivOfCartanMatrixEq",
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
  "slug": "equivofcartanmatrixeq--68c499239511f920bf8b371d",
  "source": {
    "blob": "da82dc9672408e339b8367625b07676813aa79b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 359,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68c499239511f920bf8b371d54628b23327ba28eef3587683f0eba86f741c6d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43134e12bbb18eaef9ccd080b067d1ce7ab53df8995d657901415f24407467fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfCartanMatrixEq [Finite ι₂] [P₂.IsRootSystem] [P₂.IsReduced]
    (he : ∀ i j, b₂.cartanMatrix (e i) (e j) = b.cartanMatrix i j) :
    P.Equiv P₂ :=
  let f : M ≃ₗ[R] M₂ := b.toWeightBasis.equiv b₂.toWeightBasis e
  have hf : ∀ m, f m ∈ range P₂.root ↔ m ∈ range P.root := by
    refine fun m ↦ ⟨fun h ↦ ?_, fun h ↦ ?_⟩
    · simpa using apply_mem_range_root_of_cartanMatrixEq _ b e.symm f.symm
        (by simp [f, Module.Basis.equiv]) (f m) h (by simp [(he _ _).symm])
    · exact apply_mem_range_root_of_cartanMatrixEq b b₂ e f (by simp [f, Module.Basis.equiv]) m h he
  let : Fintype ι := Fintype.ofFinite _
  let : Fintype ι₂ := Fintype.ofFinite _
  have : DecidableEq M := Classical.typeDecidableEq M
  have : DecidableEq M₂ := Classical.typeDecidableEq M₂
  let e' : ι ≃ ι₂ := P.root.toEquivRange.trans <| (f.bijOn hf).equiv.trans P₂.root.toEquivRange.symm
  have he' (i : ι) : f (P.root i) = P₂.root (e' i) := by
    simp [f, e', BijOn.equiv, Embedding.toEquivRange]
  have : Module.IsReflexive R M₂ := .of_isPerfPair P₂.toLinearMap
  Equiv.mk' P P₂ (b.toWeightBasis.equiv b₂.toWeightBasis e) e' he'

end Uniqueness

omit [IsDomain R] [Finite ι] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant3c0ebd3349e4e1d0709eae4a3176793e0186fe3f3e638d6905e8d2b068bf6753.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da82dc9672408e339b8367625b07676813aa79b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
