# IsCoprime.ne_zero_or_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0fc71ab5080102cdf71b2a9c4703412d11b5dd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06ffa17f0f7a140fb0082504dab515d6c60c0b1818720c5e4211f431c98d981a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5329878d-f294-67c4-34bb-6dedd7cde0df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebcb3b45-416c-4cfd-2fa1-ecba64e1b2d4",
  "kind": "theorem",
  "lexical_name": "IsCoprime.ne_zero_or_ne_zero",
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
  "slug": "iscoprime-ne-zero-or-ne-zero--16a31204cb457a31b3425b1f",
  "source": {
    "blob": "e0fc71ab5080102cdf71b2a9c4703412d11b5dd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 89,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant06ffa17f0f7a140fb0082504dab515d6c60c0b1818720c5e4211f431c98d981a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a31204cb457a31b3425b1f4d1328e1f1e104728f16739a4cf355ecf496ecd8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant06ffa17f0f7a140fb0082504dab515d6c60c0b1818720c5e4211f431c98d981a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebcb3b45-416c-4cfd-2fa1-ecba64e1b2d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCoprime.ne_zero_or_ne_zero [Nontrivial R] (h : IsCoprime x y) : x ≠ 0 ∨ y ≠ 0 := by
  apply not_or_of_imp
  rintro rfl rfl
  exact not_isCoprime_zero_zero h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant06ffa17f0f7a140fb0082504dab515d6c60c0b1818720c5e4211f431c98d981a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant06ffa17f0f7a140fb0082504dab515d6c60c0b1818720c5e4211f431c98d981a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fc71ab5080102cdf71b2a9c4703412d11b5dd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
