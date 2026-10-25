# toReal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4aa41cbb45aba249c0ad570ddba9ac8da6a50574",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4567721-30cc-24e4-64dd-63880e368fb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:911ed906-20a6-ef58-199b-4ee66035cb5b",
  "kind": "lemma",
  "lexical_name": "toReal_iff",
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
  "slug": "toreal-iff--35ae554ab2f05235c1782b0d",
  "source": {
    "blob": "4aa41cbb45aba249c0ad570ddba9ac8da6a50574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ae554ab2f05235c1782b0dc8cdae887c86f395b9b8e4ac446eb77c66fe56eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:911ed906-20a6-ef58-199b-4ee66035cb5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_iff (hp : 1 < p.toReal) :
    p.toReal.HolderConjugate q.toReal ↔ p.HolderConjugate q := by
  refine ⟨of_toReal, fun h ↦ ?_⟩
  have hq : 0 < q.toReal := by
    rw [toReal_pos_iff]
    refine ⟨pos q p, lt_top_iff_one_lt q p |>.mpr ?_⟩
    contrapose! hp
    exact toReal_mono one_ne_top hp
  simpa using HolderTriple.toReal 1 (zero_lt_one.trans hp) hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variant9cc5d1b37b2828a93d571b2f317b6231cf1a740a9f19d404b1ad8fd7e39fadb4.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa41cbb45aba249c0ad570ddba9ac8da6a50574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
