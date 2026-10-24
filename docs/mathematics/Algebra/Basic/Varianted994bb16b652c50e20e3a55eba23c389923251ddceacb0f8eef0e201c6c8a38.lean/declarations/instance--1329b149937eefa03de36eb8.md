# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:652260ad859ebb1c3d97943a78a53d8ca22a8f53143328848c705a7ede493188",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1329b149937eefa03de36eb8",
  "source": {
    "blob": "64733349415b6ed955147939c3572e24a4f60ddd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1329b149937eefa03de36eb849d686e26268d9ec6b21275fb614b22ecd50a245",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:652260ad859ebb1c3d97943a78a53d8ca22a8f53143328848c705a7ede493188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R M) [CommRing R] [AddCommMonoid M] [Module R M] : CommRing (SymmetricAlgebra R M) where
  __ := inferInstanceAs (CommSemiring (SymmetricAlgebra R M))
  __ := inferInstanceAs (Ring (RingQuot (SymRel R M)))

variable {R M} {A : Type*} [CommSemiring A] [Algebra R A]

/-- For any linear map `f : M →ₗ[R] A`, `SymmetricAlgebra.lift f` lifts the linear map to an
R-algebra homomorphism from `SymmetricAlgebra R M` to `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianted994bb16b652c50e20e3a55eba23c389923251ddceacb0f8eef0e201c6c8a38.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64733349415b6ed955147939c3572e24a4f60ddd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
