# le_sup_shrink_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:779ad084-a16c-d472-2ea2-3a3b630127ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7119050e-0855-0010-79d3-7da22bbfbc48",
  "kind": "theorem",
  "lexical_name": "le_sup_shrink_equiv",
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
  "slug": "le-sup-shrink-equiv--82ec3e481e003ec896987d58",
  "source": {
    "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1361,
    "line": 1356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82ec3e481e003ec896987d588a016567a5f5943f195e3a3cd6058f551ff6442d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7119050e-0855-0010-79d3-7da22bbfbc48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1356–1361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_sup_shrink_equiv {s : Set Ordinal.{u}} (hs : Small.{u} s) (a) (ha : a ∈ s) :
    a ≤ sup.{u, u} fun x => ((@equivShrink s hs).symm x).val := by
  convert le_sup.{u, u} (fun x => ((@equivShrink s hs).symm x).val) ((@equivShrink s hs) ⟨a, ha⟩)
  rw [symm_apply_apply]
#align ordinal.le_sup_shrink_equiv Ordinal.le_sup_shrink_equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean#L1356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
