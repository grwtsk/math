# RingHom.ext_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6821eb34-2a72-0f04-993a-abef70bbedbf",
  "kind": "theorem",
  "lexical_name": "RingHom.ext_rat",
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
  "slug": "ringhom-ext-rat--ed3c543536821470e07ee02c",
  "source": {
    "blob": "1ba90503ee233fe125e45ff82cf80c7dea7aaccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 292,
    "path": "GRWTSK/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3c543536821470e07ee02c6c46c3bd3607031a20f90b3e3ab4bd65fda0a3d3",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6821eb34-2a72-0f04-993a-abef70bbedbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.ext_rat {R : Type*} [Semiring R] [FunLike F ℚ R] [RingHomClass F ℚ R] (f g : F) :
    f = g :=
  MonoidWithZeroHomClass.ext_rat' <|
    RingHom.congr_fun <|
      ((f : ℚ →+* R).comp (Int.castRingHom ℚ)).ext_int ((g : ℚ →+* R).comp (Int.castRingHom ℚ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba90503ee233fe125e45ff82cf80c7dea7aaccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
