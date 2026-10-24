# mul''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4122b9148d68a290e8bee51d770105add3766cef02ffaaea110900e320f9618b",
  "kind": "def",
  "lexical_name": "mul''",
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
  "slug": "mul--56a3fcb511baa8d3bb1f1b43",
  "source": {
    "blob": "a86e27173ee73b1eae7a58391ac1daa88f59c55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56a3fcb511baa8d3bb1f1b430e65a4ac6102dacce4d584aa783201804835d772",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4122b9148d68a290e8bee51d770105add3766cef02ffaaea110900e320f9618b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def mul'' : A ⊗[R] A →ₗ[A] A where
  __ := mul' R A
  map_smul' a x := x.inductionOn (by simp +contextual [mul', smul_tmul', mul_assoc])
    (by simp +contextual [mul_add])

end Semiring

section CommSemiring
variable [CommSemiring R] [NonUnitalNonAssocCommSemiring A]
  [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86e27173ee73b1eae7a58391ac1daa88f59c55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
