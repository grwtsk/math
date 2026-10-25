# Bundle.of_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a24360a7510d1d50c0e6ff81117679a8fe49269c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:642b6d33-1ffc-aa8d-4a61-0aa1db0b62aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc1777dd-02c2-c64b-0034-080bc92430ea",
  "kind": "theorem",
  "lexical_name": "Bundle.of_op",
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
  "slug": "bundle-of-op--ccfe810b852b09d057492aa9",
  "source": {
    "blob": "a24360a7510d1d50c0e6ff81117679a8fe49269c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfe810b852b09d057492aa9d268e14a5c06b89cadc9a568ceedb08c6646fe49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1777dd-02c2-c64b-0034-080bc92430ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Bundle.of_op {X : Type} [MyClass X] :
    @MyClass.op (Bundle.of X).carrier (Bundle.of X).inst = @MyClass.op X _ := rfl

/--
error: -- Found 1 error in 12 declarations (plus 19 automatically generated ones) in the current file with 1 linters

/- The `simpNF` linter reports:
SOME SIMP LEMMAS ARE NOT IN SIMP-NORMAL FORM.
Please change the lemma to make sure their left-hand sides are in simp normal form.
To learn about simp normal forms, see
https://leanprover-community.github.io/extras/simp.html#simp-normal-form
and https://lean-lang.org/doc/reference/latest/The-Simplifier/Simp-Normal-Forms/.
This linter can be disabled with `@[nolint simpNF]`. -/
#check @Bundle.of_op /- Left-hand side simplifies from
  @MyClass.op (Bundle.of X).carrier (Bundle.of X).inst
to
  @MyClass.op X (Bundle.of X).inst
using
  dsimp only [*, Bundle.of_carrier]
Try to change the left-hand side to the simplified term! -/
-/
#guard_msgs in
set_option linter.simpNF.respectTransparency true in
#lint only simpNF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24360a7510d1d50c0e6ff81117679a8fe49269c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
