# IsEquipartition.card_small_parts_eq_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c949433f-e95d-ad27-a065-88457a5a233d",
  "kind": "theorem",
  "lexical_name": "IsEquipartition.card_small_parts_eq_mod",
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
  "slug": "isequipartition-card-small-parts-eq-mod--bfc8eddd81684a3c3e5192c2",
  "source": {
    "blob": "decc33db35f2934270360fab7f53d7ee1f9fc785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfc8eddd81684a3c3e5192c299758452822aa1cbda48dd3202d7cd6a7e4e116f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c949433f-e95d-ad27-a065-88457a5a233d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquipartition.card_small_parts_eq_mod (hP : P.IsEquipartition) :
    #{p ∈ P.parts | #p = #s / #P.parts} = #P.parts - #s % #P.parts := by
  conv_rhs =>
    arg 1
    rw [← filter_card_add_filter_neg_card_eq_card (p := fun p ↦ #p = #s / #P.parts + 1)]
  rw [hP.card_large_parts_eq_mod, add_tsub_cancel_left, hP.filter_ne_average_add_one_eq_average]

/-- There exists an enumeration of an equipartition's parts where
larger parts map to smaller numbers and vice versa. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `decc33db35f2934270360fab7f53d7ee1f9fc785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
