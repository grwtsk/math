# WF.update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8afbd7-30ae-51a6-ba54-25b630f99731",
  "kind": "theorem",
  "lexical_name": "WF.update",
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
  "slug": "wf-update--e21e7dce6a2f95d4ef7c6459",
  "source": {
    "blob": "6e1c3254ae1c099f827e12ce39547d083521336c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21e7dce6a2f95d4ef7c6459228976705a6f3fa2d2c7c031d0f3180403a5dfc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8afbd7-30ae-51a6-ba54-25b630f99731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WF.update [BEq α] [Hashable α] {buckets : Buckets α β} {i d h} (H : buckets.WF)
    (h₁ : ∀ [PartialEquivBEq α] [LawfulHashable α],
      (buckets.1[i].toList.Pairwise fun a b => ¬(a.1 == b.1)) →
      d.toList.Pairwise fun a b => ¬(a.1 == b.1))
    (h₂ : (buckets.1[i].All fun k _ => ((hash k).toUSize % buckets.1.size).toNat = i.toNat) →
      d.All fun k _ => ((hash k).toUSize % buckets.1.size).toNat = i.toNat) :
    (buckets.update i d h).WF := by
  refine ⟨fun l hl => ?_, fun i hi p hp => ?_⟩
  · exact match List.mem_or_eq_of_mem_set hl with
    | .inl hl => H.1 _ hl
    | .inr rfl => h₁ (H.1 _ (Array.getElem_mem_data ..))
  · revert hp; simp [update_data, Array.getElem_eq_data_get, List.get_set]
    split <;> intro hp
    · next eq => exact eq ▸ h₂ (H.2 _ _) _ hp
    · simp at hi; exact H.2 i hi _ hp

end Buckets

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variante94bf3eb3378518a3d9228902172903f566d6702ef107aae9b45f78ef288097b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1c3254ae1c099f827e12ce39547d083521336c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
