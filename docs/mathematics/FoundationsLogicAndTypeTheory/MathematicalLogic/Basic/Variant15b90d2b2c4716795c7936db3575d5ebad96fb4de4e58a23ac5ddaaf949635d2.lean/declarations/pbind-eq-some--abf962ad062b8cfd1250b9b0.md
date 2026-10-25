# pbind_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b2e0fd416032b7cd54dc3365d24e8524cf64a39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15b90d2b2c4716795c7936db3575d5ebad96fb4de4e58a23ac5ddaaf949635d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf821c22-fc24-b2f0-51d8-8fa515ee66bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95fee077-dff9-ad60-8d21-d0cb7ea20904",
  "kind": "theorem",
  "lexical_name": "pbind_eq_some",
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
  "slug": "pbind-eq-some--abf962ad062b8cfd1250b9b0",
  "source": {
    "blob": "2b2e0fd416032b7cd54dc3365d24e8524cf64a39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant15b90d2b2c4716795c7936db3575d5ebad96fb4de4e58a23ac5ddaaf949635d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abf962ad062b8cfd1250b9b0751d0404ced92315dddd21b13e5e3e9f67b6c863",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant15b90d2b2c4716795c7936db3575d5ebad96fb4de4e58a23ac5ddaaf949635d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95fee077-dff9-ad60-8d21-d0cb7ea20904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pbind_eq_some {f : ∀ a : α, a ∈ x → Option β} {y : β} :
    x.pbind f = some y ↔ ∃ (z : α) (H : z ∈ x), f z H = some y := by
  rcases x with (_|x)
  · simp only [pbind, false_iff, not_exists]
    intro z h
    simp at h
  · simp only [pbind]
    refine ⟨λ h => ⟨x, rfl, h⟩, ?_⟩
    rintro ⟨z, H, hz⟩
    simp only [mem_def, Option.some_inj] at H
    simpa [H] using hz
#align option.pbind_eq_some Option.pbind_eq_some

-- Porting note: Can't simp tag this anymore because `pmap` simplifies
-- @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant15b90d2b2c4716795c7936db3575d5ebad96fb4de4e58a23ac5ddaaf949635d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant15b90d2b2c4716795c7936db3575d5ebad96fb4de4e58a23ac5ddaaf949635d2.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2e0fd416032b7cd54dc3365d24e8524cf64a39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
