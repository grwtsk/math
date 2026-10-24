# modularFormSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98a05a41e00cb66fe9d666a053f3a2e96a3b7a40efedb4e48a18988858f83f3d",
  "kind": "def",
  "lexical_name": "modularFormSurface",
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
  "slug": "modularformsurface--20fe71f83235b1e936081a81",
  "source": {
    "blob": "f9415bc94d4eabbbd4dcc31a35085f0666fb6a40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variantb673e49996a1f1fde66caa57bdaf3d5245234f852b357c00b4dec7698082ba3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20fe71f83235b1e936081a812d829d6cb8b472bc4b21e2fa3c724fdf5dcc80a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variantb673e49996a1f1fde66caa57bdaf3d5245234f852b357c00b4dec7698082ba3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98a05a41e00cb66fe9d666a053f3a2e96a3b7a40efedb4e48a18988858f83f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modularFormSurface : ModularFormSurface :=
  { formId := "associated_modular_form_surface"
    weightLabel := "weight_2_surface"
    levelLabel := "conductor_level_surface" }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variantb673e49996a1f1fde66caa57bdaf3d5245234f852b357c00b4dec7698082ba3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/WilesSurface/Variantb673e49996a1f1fde66caa57bdaf3d5245234f852b357c00b4dec7698082ba3b.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9415bc94d4eabbbd4dcc31a35085f0666fb6a40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
