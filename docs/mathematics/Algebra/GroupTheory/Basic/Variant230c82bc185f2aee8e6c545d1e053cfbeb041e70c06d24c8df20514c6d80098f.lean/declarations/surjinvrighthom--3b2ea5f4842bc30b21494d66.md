# surjInvRightHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd023470af65dfa8dcc0cb7eaec10b79a80d63a4f081aa0dd2dd68a9eef06332",
  "kind": "def",
  "lexical_name": "surjInvRightHom",
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
  "slug": "surjinvrighthom--3b2ea5f4842bc30b21494d66",
  "source": {
    "blob": "18dbabf2c6ecba605276642f02ddde9c2ccffba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b2ea5f4842bc30b21494d669353c27f651cec3f45839a1f85433a0d52ae9dae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd023470af65dfa8dcc0cb7eaec10b79a80d63a4f081aa0dd2dd68a9eef06332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def surjInvRightHom : S.Section where
  toFun := Function.surjInv S.rightHom_surjective
  rightInverse_rightHom := Function.surjInv_eq S.rightHom_surjective

namespace Section

variable {S}
variable {E' : Type*} [Group E'] {S' : GroupExtension N E' G} (σ σ' : S.Section) (g g₁ g₂ : G)
  (equiv : S.Equiv S')

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant230c82bc185f2aee8e6c545d1e053cfbeb041e70c06d24c8df20514c6d80098f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18dbabf2c6ecba605276642f02ddde9c2ccffba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
