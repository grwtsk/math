# mk_le_of_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3941ffd972d1d78964ccd54782bcd970f0634d8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89c529b9-84d6-2540-b05c-646eaeae45a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6faab12-63ad-d0d3-6b87-7325eee6c5cf",
  "kind": "theorem",
  "lexical_name": "mk_le_of_module",
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
  "slug": "mk-le-of-module--151abda5adff81dd16bcf706",
  "source": {
    "blob": "3941ffd972d1d78964ccd54782bcd970f0634d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151abda5adff81dd16bcf706958290ed3c0f16271de5888a2b5d21723ae166c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6faab12-63ad-d0d3-6b87-7325eee6c5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_of_module (R : Type u) (E : Type v)
    [AddCommGroup E] [Ring R] [Module R E] [Nontrivial E] [NoZeroSMulDivisors R E] :
    Cardinal.lift.{v} (#R) ≤ Cardinal.lift.{u} (#E) := by
  obtain ⟨x, hx⟩ : ∃ (x : E), x ≠ 0 := exists_ne 0
  have : Injective (fun k ↦ k • x) := smul_left_injective R hx
  exact lift_mk_le_lift_mk_of_injective this

end Cardinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3941ffd972d1d78964ccd54782bcd970f0634d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
