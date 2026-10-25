# lt_wf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4d8c650-9d09-1931-e432-8a937e759b09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:566b3e1a-d33b-e11c-005b-185b6d586456",
  "kind": "theorem",
  "lexical_name": "lt_wf",
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
  "slug": "lt-wf--75431eade5c6f9c145bcce16",
  "source": {
    "blob": "fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75431eade5c6f9c145bcce16fd7a15f3eb6a7c47dfbca85b8e68595739f1c8aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:566b3e1a-d33b-e11c-005b-185b6d586456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem lt_wf : @WellFounded Cardinal.{u} (· < ·) :=
  ⟨fun a =>
    by_contradiction fun h => by
      let ι := { c : Cardinal // ¬Acc (· < ·) c }
      let f : ι → Cardinal := Subtype.val
      haveI hι : Nonempty ι := ⟨⟨_, h⟩⟩
      obtain ⟨⟨c : Cardinal, hc : ¬Acc (· < ·) c⟩, ⟨h_1 : ∀ j, (f ⟨c, hc⟩).out ↪ (f j).out⟩⟩ :=
        Embedding.min_injective fun i => (f i).out
      refine hc (Acc.intro _ fun j h' => by_contradiction fun hj => h'.2 ?_)
      have : #_ ≤ #_ := ⟨h_1 ⟨j, hj⟩⟩
      simpa only [mk_out] using this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant360dcd244387d28a9c695c24dd5fcbdac387ea1edc957752d7535706d49cf8e6.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa9340a5585b1f3a6b428cd6e3e9bfef7b82d276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
