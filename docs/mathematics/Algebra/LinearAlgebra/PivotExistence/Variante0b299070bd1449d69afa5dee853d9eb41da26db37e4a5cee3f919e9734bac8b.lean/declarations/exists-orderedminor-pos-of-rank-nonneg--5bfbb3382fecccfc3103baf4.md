# exists_orderedMinor_pos_of_rank_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75cb7211-0a0c-bad2-a2c8-456c3adfb3e6",
  "kind": "theorem",
  "lexical_name": "exists_orderedMinor_pos_of_rank_nonneg",
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
  "slug": "exists-orderedminor-pos-of-rank-nonneg--5bfbb3382fecccfc3103baf4",
  "source": {
    "blob": "fa77a8b9e9ce43dd5638826fdc5abc5eae85d35f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bfbb3382fecccfc3103baf4995c147e8845e37e5fd5b6777bafa3805340ac79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75cb7211-0a0c-bad2-a2c8-456c3adfb3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderedMinor_pos_of_rank_nonneg (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) (hn : AllOrderedMinorsNonneg A) :
    ∃ I : Fin k ↪o Fin n, 0 < orderedMinor A I := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A hA
  exact ⟨I, lt_of_le_of_ne (hn I) (Ne.symm hI)⟩

/-- Every full-rank frame has a chart with an actually constructed unique normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variante0b299070bd1449d69afa5dee853d9eb41da26db37e4a5cee3f919e9734bac8b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa77a8b9e9ce43dd5638826fdc5abc5eae85d35f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
