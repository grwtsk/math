# instHopfAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a367d763dbdcdc38166d5d109cfbca773a1b3a3869f6de650b85075ebe64d08",
  "kind": "instance",
  "lexical_name": "instHopfAlgebra",
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
  "slug": "insthopfalgebra--c71622c5fec3196567586415",
  "source": {
    "blob": "8889968fc1cd440e5feb066c972729f2bef6865c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c71622c5fec31965675864153443e98d8066bf12ec7a3d3b016b68bf7dc41e2d",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a367d763dbdcdc38166d5d109cfbca773a1b3a3869f6de650b85075ebe64d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHopfAlgebra : HopfAlgebra R A[G] where
  mul_antipode_rTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_antipode_mul_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_antipode_mul_eq (Coalgebra.Repr.arbitrary R b)))
  mul_antipode_lTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_mul_antipode_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_mul_antipode_eq (Coalgebra.Repr.arbitrary R b)))

end AddMonoidAlgebra

namespace LaurentPolynomial

open Finsupp

variable (R A : Type*) [CommSemiring R] [Semiring A] [HopfAlgebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8889968fc1cd440e5feb066c972729f2bef6865c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
