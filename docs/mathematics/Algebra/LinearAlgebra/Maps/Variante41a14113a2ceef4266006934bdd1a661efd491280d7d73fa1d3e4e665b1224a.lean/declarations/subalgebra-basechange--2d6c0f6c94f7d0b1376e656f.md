# Subalgebra.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c966f70f245ce8871e710dada9431bce3fcbd21614213a29ac076145fcbb396",
  "kind": "def",
  "lexical_name": "Subalgebra.baseChange",
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
  "slug": "subalgebra-basechange--2d6c0f6c94f7d0b1376e656f",
  "source": {
    "blob": "eed6bc25275c7805e3ef5654effd7c12536fb4bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 926,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6c0f6c94f7d0b1376e656f990938a824966d8ad93f25e81e15d8f2848c7e33",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c966f70f245ce8871e710dada9431bce3fcbd21614213a29ac076145fcbb396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subalgebra.baseChange {R A : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
    (B : Type*) [CommSemiring B] [Algebra R B] (C : Subalgebra R A) : Subalgebra B (B ⊗[R] A) :=
  AlgHom.range (Algebra.TensorProduct.map (AlgHom.id B B) C.val)

variable {R A B : Type*} [CommSemiring R] [Semiring A] [CommSemiring B] [Algebra R A] [Algebra R B]
variable {C : Subalgebra R A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maps/Variante41a14113a2ceef4266006934bdd1a661efd491280d7d73fa1d3e4e665b1224a.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed6bc25275c7805e3ef5654effd7c12536fb4bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
