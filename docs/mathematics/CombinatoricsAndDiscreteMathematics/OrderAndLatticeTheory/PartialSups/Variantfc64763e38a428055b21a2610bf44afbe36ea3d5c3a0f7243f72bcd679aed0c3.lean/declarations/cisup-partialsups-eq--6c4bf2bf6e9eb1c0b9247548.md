# ciSup_partialSups_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49159d5a-fa7e-f8ff-2005-c22646174fbc",
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
  "slug": "cisup-partialsups-eq--6c4bf2bf6e9eb1c0b9247548",
  "source": {
    "blob": "f93914970ec96b11602d6f372d69b5233ff26c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c4bf2bf6e9eb1c0b924754848e53e7e7b6d98595775581e25b73d7ec8efff68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49159d5a-fa7e-f8ff-2005-c22646174fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–265.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartialSups/Variantfc64763e38a428055b21a2610bf44afbe36ea3d5c3a0f7243f72bcd679aed0c3.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f93914970ec96b11602d6f372d69b5233ff26c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
