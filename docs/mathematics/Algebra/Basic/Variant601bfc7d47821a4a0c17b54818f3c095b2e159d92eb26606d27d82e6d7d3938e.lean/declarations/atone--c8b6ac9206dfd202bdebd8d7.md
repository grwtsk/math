# atOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75b5a47982300ef879f998678d081de9dcdcb4c8cb00f4d75d6ba8c4b4c3fe8a",
  "kind": "def",
  "lexical_name": "atOne",
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
  "slug": "atone--c8b6ac9206dfd202bdebd8d7",
  "source": {
    "blob": "66683c752a5edd4c5cff7b6f68e9177cb134dd64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 155,
    "path": "GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8b6ac9206dfd202bdebd8d766c95ccbe0a1584ad7053b2935ceaaae2a80d12a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75b5a47982300ef879f998678d081de9dcdcb4c8cb00f4d75d6ba8c4b4c3fe8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def atOne [IsLocalization.Away (1 : R) S] : R ≃ₐ[R] S :=
  @atUnit R _ S _ _ (1 : R) isUnit_one _
#align is_localization.at_one IsLocalization.atOne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant601bfc7d47821a4a0c17b54818f3c095b2e159d92eb26606d27d82e6d7d3938e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66683c752a5edd4c5cff7b6f68e9177cb134dd64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
