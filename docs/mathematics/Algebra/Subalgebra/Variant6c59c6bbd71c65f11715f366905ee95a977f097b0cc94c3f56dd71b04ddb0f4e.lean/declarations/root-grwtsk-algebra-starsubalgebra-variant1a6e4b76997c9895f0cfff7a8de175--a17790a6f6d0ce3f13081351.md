# _root_.GRWTSK.Algebra.StarSubalgebra.Variant1a6e4b76997c9895f0cfff7a8de175e143b03814878d1377bf0576b8391d20d7.StarAlgEquiv.ofInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f40c523ecf3042d1b99f8bc60ac5598ed47f74d0b6418e1cdd2a76c737403ff1",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.StarSubalgebra.Variant1a6e4b76997c9895f0cfff7a8de175e143b03814878d1377bf0576b8391d20d7.StarAlgEquiv.ofInjective",
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
  "slug": "root-grwtsk-algebra-starsubalgebra-variant1a6e4b76997c9895f0cfff7a8de175--a17790a6f6d0ce3f13081351",
  "source": {
    "blob": "3589502522d209bf34cd599093cc17d367a7806e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 810,
    "path": "GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a17790a6f6d0ce3f13081351c61ec8d5294d8bc65d7a0deb02e28c005794790f",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f40c523ecf3042d1b99f8bc60ac5598ed47f74d0b6418e1cdd2a76c737403ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.StarSubalgebra.Variant1a6e4b76997c9895f0cfff7a8de175e143b03814878d1377bf0576b8391d20d7.StarAlgEquiv.ofInjective (f : A →⋆ₐ[R] B)
    (hf : Function.Injective f) : A ≃⋆ₐ[R] f.range :=
  { AlgEquiv.ofInjective (f : A →ₐ[R] B) hf with
    toFun := f.rangeRestrict
    map_star' := fun a => Subtype.ext (map_star f a)
    map_smul' := fun r a => Subtype.ext (map_smul f r a) }
end StarAlgHom


section RestrictScalars

variable (R : Type*) {S A B : Type*} [CommSemiring R]
  [CommSemiring S] [Semiring A] [Semiring B] [Algebra R S] [Algebra S A] [Algebra S B]
  [Algebra R A] [Algebra R B] [IsScalarTower R S A] [IsScalarTower R S B] [Star A] [Star B]

@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3589502522d209bf34cd599093cc17d367a7806e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
