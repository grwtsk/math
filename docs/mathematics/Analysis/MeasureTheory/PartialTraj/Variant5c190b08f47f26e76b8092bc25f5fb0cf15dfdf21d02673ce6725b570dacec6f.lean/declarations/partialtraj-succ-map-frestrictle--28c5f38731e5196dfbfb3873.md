# partialTraj_succ_map_frestrictLe₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1f7bfcb-1e17-1659-e56f-112175b53c7c",
  "kind": "lemma",
  "lexical_name": "partialTraj_succ_map_frestrictLe₂",
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
  "slug": "partialtraj-succ-map-frestrictle--28c5f38731e5196dfbfb3873",
  "source": {
    "blob": "8d100aa339def3bd261e1aba6660d7bf711a26d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 248,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c5f38731e5196dfbfb3873991fd8b766009aba356d4c8035013904d1117aa4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1f7bfcb-1e17-1659-e56f-112175b53c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partialTraj_succ_map_frestrictLe₂ (a b : ℕ) :
    (partialTraj κ a (b + 1)).map (frestrictLe₂ b.le_succ) = partialTraj κ a b := by
  obtain hab | hba := le_or_lt a b
  · have := IsMarkovKernel.map (κ b) (piSingleton b).measurable
    rw [partialTraj_succ_eq_comp hab, map_comp, partialTraj_succ_self, ← map_comp_right,
      frestrictLe₂_comp_IicProdIoc, ← fst_eq, fst_prod, id_comp]
    all_goals fun_prop
  · rw [partialTraj_le (Nat.succ_le.2 hba), partialTraj_le hba.le, deterministic_map]
    · rfl
    · fun_prop

/-- If we restrict the distribution of the trajectory up to time `c` to times `≤ b` we get
the trajectory up to time `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant5c190b08f47f26e76b8092bc25f5fb0cf15dfdf21d02673ce6725b570dacec6f.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d100aa339def3bd261e1aba6660d7bf711a26d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
