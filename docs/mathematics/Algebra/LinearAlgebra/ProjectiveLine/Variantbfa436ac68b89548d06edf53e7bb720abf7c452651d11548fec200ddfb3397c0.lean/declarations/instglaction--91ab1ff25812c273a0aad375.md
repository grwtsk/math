# instGLAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23c2ee5f1e9dc27ad9142fa49426f14077c64f02ccf177a2df1c48eb54472f5e",
  "kind": "instance",
  "lexical_name": "instGLAction",
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
  "slug": "instglaction--91ab1ff25812c273a0aad375",
  "source": {
    "blob": "3b6b1d34ffbea42a37c44720751aac367be4b5e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91ab1ff25812c273a0aad3756836d16e811f79dfab2487813a6522eae80965f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23c2ee5f1e9dc27ad9142fa49426f14077c64f02ccf177a2df1c48eb54472f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instGLAction : MulAction (GL (Fin 2) K) (OnePoint K) :=
  (equivProjectivization K).mulAction (GL (Fin 2) K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantbfa436ac68b89548d06edf53e7bb720abf7c452651d11548fec200ddfb3397c0.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6b1d34ffbea42a37c44720751aac367be4b5e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
