# fromMatrixLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1e655e7c3ea36103f5d663fb39c20bdffbac3963d800ca7d26aa212ccc8e106",
  "kind": "def",
  "lexical_name": "fromMatrixLinear",
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
  "slug": "frommatrixlinear--f5e07005024298ee50eab27a",
  "source": {
    "blob": "fbd3806641358a1b520ad3d2ee0b7fb338c309bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5e07005024298ee50eab27a56bcf1b16da501a70926e5881fe3e3f002a1b0b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1e655e7c3ea36103f5d663fb39c20bdffbac3963d800ca7d26aa212ccc8e106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromMatrixLinear {N : Type*} [AddCommGroup N] [Module (Matrix ι ι R) N] (i : ι)
    [Module R N] [IsScalarTower R (Matrix ι ι R) N] (f : M →ₗ[Matrix ι ι R] N) :
    toModuleCatObj R M i →ₗ[R] toModuleCatObj R N i :=
  f.restrictScalars R |>.restrict fun x hx => by
    obtain ⟨y, rfl⟩ := mem_toModuleCatObj i |>.1 hx
    exact ⟨f y, map_smul _ _ _ |>.symm⟩

end MatrixModCat

universe w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd3806641358a1b520ad3d2ee0b7fb338c309bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
