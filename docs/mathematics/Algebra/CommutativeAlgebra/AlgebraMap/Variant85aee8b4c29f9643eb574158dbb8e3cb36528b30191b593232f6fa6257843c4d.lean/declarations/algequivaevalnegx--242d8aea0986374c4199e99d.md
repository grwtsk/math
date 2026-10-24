# algEquivAevalNegX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:606916a142e7f76e6188efaa2e6d1bdb4f920644f23743de1c55016339da11a8",
  "kind": "def",
  "lexical_name": "algEquivAevalNegX",
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
  "slug": "algequivaevalnegx--242d8aea0986374c4199e99d",
  "source": {
    "blob": "5b3678bbd5eee118c1cd499d89c78d0fe0e5aa72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 388,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:242d8aea0986374c4199e99d1fb945a99f3599c49d1a7c7a6b74114c91a3f5c1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:606916a142e7f76e6188efaa2e6d1bdb4f920644f23743de1c55016339da11a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algEquivAevalNegX {R : Type*} [CommRing R] : R[X] ≃ₐ[R] R[X] :=
  algEquivOfCompEqX (-X) (-X) (by simp) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant85aee8b4c29f9643eb574158dbb8e3cb36528b30191b593232f6fa6257843c4d.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3678bbd5eee118c1cd499d89c78d0fe0e5aa72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
