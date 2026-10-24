# RingHom.polyToMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e632262d5001aa6cdcb3f7fcdf22edd94e904065fd901118db4563337fa00d30",
  "kind": "def",
  "lexical_name": "RingHom.polyToMatrix",
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
  "slug": "ringhom-polytomatrix--908042cbb3db1f479fbf1fb1",
  "source": {
    "blob": "6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:908042cbb3db1f479fbf1fb140f9d07287d173cf1250ab421943b5c10c259362",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e632262d5001aa6cdcb3f7fcdf22edd94e904065fd901118db4563337fa00d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RingHom.polyToMatrix (f : A →+* Matrix n n R) : A[X] →+* Matrix n n R[X] :=
  matPolyEquiv.symm.toRingHom.comp (mapRingHom f)

variable {S : Type*} [CommSemiring S] (f : S →+* Matrix n n R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixPolynomialAlgebra/Variant0edb0fbb841ce477bb84b42be6d86d3b009e06add6c09e82104e029f5db470be.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3e142fa7ce5cc7e25ee93e13d43742e9822d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
