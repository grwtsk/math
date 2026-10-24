# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:704f05c7fead463351b3a1f4a1a9a84f63caeb3acd1abf91a0654cb2b1d12826",
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
  "slug": "instance--46cd2d31bd49db89d17c5f66",
  "source": {
    "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 473,
    "path": "GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46cd2d31bd49db89d17c5f6614dd5ae89e5a177e3847c255610e303eb86c421d",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:704f05c7fead463351b3a1f4a1a9a84f63caeb3acd1abf91a0654cb2b1d12826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsJacobson R] : IsJacobson R[X] :=
  isJacobson_polynomial_iff_isJacobson.mpr ‹IsJacobson R›

end CommRing

section

variable {R : Type*} [CommRing R] [IsJacobson R]

variable (P : Ideal R[X]) [hP : P.IsMaximal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efe5286cceb347fd2e22fdfdc22b70211a69a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
