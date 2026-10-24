# val_mulMap_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2269ce0-8c3b-7b63-111b-14ad45a3de19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0f06637-678b-a881-c433-68ef80997ee9",
  "kind": "theorem",
  "lexical_name": "val_mulMap_tmul",
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
  "slug": "val-mulmap-tmul--4a940a8f76b8b45cd6356a4e",
  "source": {
    "blob": "a886cc903f25326c2f897be2725c45e598660bc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a940a8f76b8b45cd6356a4e79560ae8e37f9096db754f8de0c8e4457fbc67e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0f06637-678b-a881-c433-68ef80997ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_mulMap_tmul (a : A) (b : B) : (H.mulMap (a ⊗ₜ[R] b) : S) = a.1 * b.1 := rfl

include H in
/-- If `A` and `B` are subalgebras in a commutative algebra `S` over `R`, and if they are
linearly disjoint, and if they are free `R`-modules, then `A ⊔ B` is also a free `R`-module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a886cc903f25326c2f897be2725c45e598660bc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
