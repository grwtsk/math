# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88d79d52dbfcd5b4b2be6af17f85989583f8b4d1df186627e181b471a7327209",
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
  "slug": "instance--901b66c3fbffb4b0a905b83b",
  "source": {
    "blob": "80879431c72180b7ffccf141b16bae03844ae2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 24,
    "path": "GRWTSK/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:901b66c3fbffb4b0a905b83b9a07befd4422329195061388277f7665e94a030f",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88d79d52dbfcd5b4b2be6af17f85989583f8b4d1df186627e181b471a7327209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsLocalRing R] : IsHausdorff (maximalIdeal R) M :=
  .of_le_jacobson _ _ (maximalIdeal_le_jacobson _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant263fe79445fc294b7a4a7ac3dc5976940c5c44e093a0e82ba22f611e319df5c8.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80879431c72180b7ffccf141b16bae03844ae2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
