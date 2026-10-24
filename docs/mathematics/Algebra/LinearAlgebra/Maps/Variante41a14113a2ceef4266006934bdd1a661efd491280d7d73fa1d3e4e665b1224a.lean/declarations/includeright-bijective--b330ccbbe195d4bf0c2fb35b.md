# includeRight_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18c5391a-4cef-cabb-4486-2ab0bea0a749",
  "kind": "lemma",
  "lexical_name": "includeRight_bijective",
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
  "slug": "includeright-bijective--b330ccbbe195d4bf0c2fb35b",
  "source": {
    "blob": "eed6bc25275c7805e3ef5654effd7c12536fb4bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 723,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b330ccbbe195d4bf0c2fb35be3c1727490332f19b3b28cfb65a177625988a9f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18c5391a-4cef-cabb-4486-2ab0bea0a749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma includeRight_bijective (h : Function.Bijective (algebraMap R A)) :
    Function.Bijective (includeRight : B →ₐ[R] A ⊗[R] B) := by
  rw [← Function.Bijective.of_comp_iff' (TensorProduct.comm R A B).bijective]
  exact Algebra.TensorProduct.includeLeft_bijective (S := R) h

end

end Monoidal

section

variable [CommSemiring R] [CommSemiring S] [Algebra R S]
variable [Semiring A] [Algebra R A] [Algebra S A] [IsScalarTower R S A]
variable [Semiring B] [Algebra R B]
variable [CommSemiring C] [Algebra R C] [Algebra S C] [IsScalarTower R S C]

/-- If `A`, `B`, `C` are `R`-algebras, `A` and `C` are also `S`-algebras (forming a tower as
`·/S/R`), then the product map of `f : A →ₐ[S] C` and `g : B →ₐ[R] C` is an `S`-algebra
homomorphism.

This is just a special case of `Algebra.TensorProduct.lift` for when `C` is commutative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed6bc25275c7805e3ef5654effd7c12536fb4bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
