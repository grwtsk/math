# ciSup_partialSups_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d989ae8729175a59086bcba2ad95b370834f0f70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86e93f62-d90f-244d-c66c-500dd91e5041",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80f5561b-a0e3-4983-bd1a-a19552e78d0e",
  "kind": "theorem",
  "lexical_name": "ciSup_partialSups_eq'",
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
  "slug": "cisup-partialsups-eq--c0f85507eb8f6a4a96a636a1",
  "source": {
    "blob": "d989ae8729175a59086bcba2ad95b370834f0f70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f85507eb8f6a4a96a636a13941eab0e33e95ead902f051f2602863dff31a42",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80f5561b-a0e3-4983-bd1a-a19552e78d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ciSup_partialSups_eq' [ConditionallyCompleteLinearOrder α] (f : ι → α) :
    ⨆ i, partialSups f i = ⨆ i, f i := by
  by_cases h : BddAbove (Set.range f)
  · exact ciSup_partialSups_eq h
  · rw [iSup, iSup, ConditionallyCompleteLinearOrder.csSup_of_not_bddAbove _ h,
      ConditionallyCompleteLinearOrder.csSup_of_not_bddAbove _
        (bddAbove_range_partialSups.not.mpr h)]

end ConditionallyCompleteLattice

section CompleteLattice

variable [Preorder ι] [LocallyFiniteOrderBot ι] [CompleteLattice α]

/-- Version of `ciSup_partialSups_eq` without boundedness assumptions, but requiring a
`CompleteLattice` rather than just a `ConditionallyCompleteLattice`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variante21849fda37ffb3714417c459517b60baf75e6610598fb9664ef5a8dc480a4c7.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d989ae8729175a59086bcba2ad95b370834f0f70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
