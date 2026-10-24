# AddSubgroupClass.zsmulMemClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94c0f2d2df4342d61ff347c294957a61109b19f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:543ab8bf-cbb2-c027-2411-a3f99de7e4b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50670371-ebd7-3c47-2b85-55ccc7c6a4d8",
  "kind": "lemma",
  "lexical_name": "AddSubgroupClass.zsmulMemClass",
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
  "slug": "addsubgroupclass-zsmulmemclass--749926b063aa86dec4e4f794",
  "source": {
    "blob": "94c0f2d2df4342d61ff347c294957a61109b19f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:749926b063aa86dec4e4f794ee1d72132cb0861e940d634441c61e814b59f9e9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50670371-ebd7-3c47-2b85-55ccc7c6a4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AddSubgroupClass.zsmulMemClass {S M : Type*} [SubNegMonoid M] [SetLike S M]
    [AddSubgroupClass S M] : SMulMemClass S ℤ M where
  smul_mem n _x hx := zsmul_mem hx n

namespace SetLike

open SMulMemClass

section SMul

variable [SMul R M] [SetLike S M] [hS : SMulMemClass S R M] (s : S)

-- lower priority so other instances are found first
/-- A subset closed under the scalar action inherits that action. -/
@[to_additive "A subset closed under the additive action inherits that action."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c0f2d2df4342d61ff347c294957a61109b19f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
