# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c53182003c8576a023bf1e54cf1cd834f45c2f1b7bfaf0484fa4d8a759a2dba2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9bbf50eca48818b1cfeece20",
  "source": {
    "blob": "517ca3c5463c6e3afa0b7d466bac6b87752cac37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bbf50eca48818b1cfeece2023c2bea931dec4ea6ce80bec33a485c95e9e7d32",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c53182003c8576a023bf1e54cf1cd834f45c2f1b7bfaf0484fa4d8a759a2dba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [R1Space α] : IsMeasurablyGenerated (cocompact α) where
  exists_measurable_subset := by
    intro _ hs
    obtain ⟨t, ht, hts⟩ := mem_cocompact.mp hs
    exact ⟨(closure t)ᶜ, ht.closure.compl_mem_cocompact, isClosed_closure.measurableSet.compl,
      (compl_subset_compl.2 subset_closure).trans hts⟩

end Preorder

section PartialOrder

variable [PartialOrder α] [OrderClosedTopology α] [SecondCountableTopology α] {a b : α}

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517ca3c5463c6e3afa0b7d466bac6b87752cac37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
