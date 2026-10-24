# fiberEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08b72abcf9ff596eb7b85c1024e96e9b5bcdeaca2149253cb3f7129328815b80",
  "kind": "def",
  "lexical_name": "fiberEquivQuotient",
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
  "slug": "fiberequivquotient--05a0ee125a24867ae76503d4",
  "source": {
    "blob": "0a9d7787952bdc5a050d2eb40a30145e195b89ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 110,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05a0ee125a24867ae76503d42fca3e2e6230e6e0a3968c2a294d31ae1b1d6148",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08b72abcf9ff596eb7b85c1024e96e9b5bcdeaca2149253cb3f7129328815b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fiberEquivQuotient (f : R[X] →ₐ[R] S) (hf : Function.Surjective f) (p : Ideal R) [p.IsPrime] :
    p.Fiber S ≃ₐ[p.ResidueField] p.ResidueField[X] ⧸
      ((RingHom.ker (f : R[X] →+* S)).map (mapRingHom (algebraMap R p.ResidueField))) := by
  refine .ofAlgHom (Algebra.TensorProduct.lift (Algebra.ofId _ _) (AlgHom.liftOfSurjective _ hf
    ((Ideal.Quotient.mkₐ _ _).comp (mapAlgHom (Algebra.ofId _ _))) ?_) fun _ _ ↦ .all _ _)
    (Ideal.Quotient.liftₐ _ (aeval (1 ⊗ₜ f .X)) ?_) ?_ ?_
  · simp [AlgHom.comp_toRingHom, ← RingHom.comap_ker, ← Ideal.map_le_iff_le_comap]
  · change Ideal.map _ _ ≤ RingHom.ker (aeval _).toRingHom
    rw [Ideal.map_le_iff_le_comap, RingHom.comap_ker]
    have : ((aeval (1 ⊗ₜ[R] f X : p.Fiber S)).restrictScalars R).comp
        (mapAlgHom (Algebra.ofId R p.ResidueField)) =
        Algebra.TensorProduct.includeRight.comp f := by ext; simp
    exact .trans_eq (by intro; aesop) congr(RingHom.ker $this).symm
  · apply Ideal.Quotient.algHom_ext
    ext
    simp
  · ext x
    obtain ⟨x, rfl⟩ := hf x
    simpa using aeval_algHom_apply
      ((Algebra.TensorProduct.includeRight : S →ₐ[_] p.Fiber S).comp f) X x

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7c1dc2448fab13c63142c23d0aaa79b8be6f18d98e212c3d94e24829b382fd68.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9d7787952bdc5a050d2eb40a30145e195b89ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
