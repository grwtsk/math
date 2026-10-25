# nonsettling_receipt_has_boundary_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bcf68b8d7e9576c831b3a7801b96dbf520ef1c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47900be0-d21d-6197-fe77-fe79ee382110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d66bfe7-7950-5184-0227-d4c2ccb05238",
  "kind": "theorem",
  "lexical_name": "nonsettling_receipt_has_boundary_residue",
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
  "slug": "nonsettling-receipt-has-boundary-residue--458a06772f011264c0d67e89",
  "source": {
    "blob": "5bcf68b8d7e9576c831b3a7801b96dbf520ef1c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616/Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:458a06772f011264c0d67e892d83359625433395cfa48e7a9bc9d07231be29ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616/Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d66bfe7-7950-5184-0227-d4c2ccb05238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonsettling_receipt_has_boundary_residue
    (nonsettling : NonsettlingAuthorityReceipt)
    (P : Prop) (r : FWR.Residue) :
    (nonsettling.receipt.targetBoundaryCheck P r).hasResidue = true := by
  exact
    AuthorityReceipt.targetBoundaryCheck_hasResidue
      nonsettling.receipt nonsettling.forbids P r

end NonsettlingAuthorityReceipt

end Think.Imports
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616/Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M496d706f7274732f4e6f6e736574746c696e67417574686f72697479526563656970742e6c65616/Variant44d5c6d1b8734f317d7edd08173ba07cc62ee4553f8a614a9946160f3badfe9f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bcf68b8d7e9576c831b3a7801b96dbf520ef1c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
