# riemannZetaZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab83a0cf90549666a76d58a9e3e2339fd0c6951c17fbc0d0452e900b6c082e44",
  "kind": "def",
  "lexical_name": "riemannZetaZeros",
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
  "slug": "riemannzetazeros--4f0f961acb99401e0af41431",
  "source": {
    "blob": "7216460a440a2398b75ad7edb9ebff33593db489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 44,
    "path": "GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f0f961acb99401e0af41431a6c35667f003be95116bb8262f5dcdbb93c572ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab83a0cf90549666a76d58a9e3e2339fd0c6951c17fbc0d0452e900b6c082e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def riemannZetaZeros : Set ℂ := riemannZeta ⁻¹' {0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7216460a440a2398b75ad7edb9ebff33593db489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
