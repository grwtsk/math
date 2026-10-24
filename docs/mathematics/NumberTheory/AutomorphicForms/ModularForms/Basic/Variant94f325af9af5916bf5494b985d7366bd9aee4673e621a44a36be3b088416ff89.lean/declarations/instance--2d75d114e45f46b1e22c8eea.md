# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68de63e26279ad0d65d960032dd1bccca4e8cb3bed3b01b8a711fb1506a60439",
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
  "slug": "instance--2d75d114e45f46b1e22c8eea",
  "source": {
    "blob": "281ac863f6762ca846eae0ab571d078a9bec9914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 298,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d75d114e45f46b1e22c8eea536bf5113b0bb20e7ab2add3ccb78d8ae313fe65",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68de63e26279ad0d65d960032dd1bccca4e8cb3bed3b01b8a711fb1506a60439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsSubApply (ModularForm Γ k) ℍ ℂ where
  sub_apply _ _ _ := rfl

@[deprecated (since := "2026-07-10")] alias coe_sub := FunLike.coe_sub

@[deprecated (since := "2026-07-10")] protected alias sub_apply := sub_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281ac863f6762ca846eae0ab571d078a9bec9914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
