# toBialgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d01c80431fe0dc0e7dd702fe89649829dca15be4f760e2d7a3fcf74b199b252",
  "kind": "instance",
  "lexical_name": "toBialgebra",
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
  "slug": "tobialgebra--d9dda20fd7424686d3e955ca",
  "source": {
    "blob": "6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9dda20fd7424686d3e955ca0e85eaa6e493cdb71e14440c908d0991c50ac9b4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d01c80431fe0dc0e7dd702fe89649829dca15be4f760e2d7a3fcf74b199b252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toBialgebra : Bialgebra R R where
  mul_compr₂_counit := by ext; simp
  counit_one := rfl
  mul_compr₂_comul := by ext; simp
  comul_one := rfl

end CommSemiring

namespace Bialgebra

variable {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]

/-- If `R` is a commutative semiring and `A` is an `R`-algebra,
then `Bialgebra.ofAlgHom` consumes the counit and comultiplication
as algebra homomorphisms that satisfy the coalgebra axioms to define
a bialgebra structure on `A`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
