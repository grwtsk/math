# independent_of_coprime_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3d1567e-a982-8e8f-136a-f3b2b900b1bd",
  "kind": "theorem",
  "lexical_name": "independent_of_coprime_order",
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
  "slug": "independent-of-coprime-order--2d83f064a82f558f7a716290",
  "source": {
    "blob": "969d03bb0764b7f983e73ecef3278aee6e08a2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 343,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d83f064a82f558f7a716290b61d6c66d74a9ba03e3ea29bf0595aeaaf7d07a8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3d1567e-a982-8e8f-136a-f3b2b900b1bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem independent_of_coprime_order [Finite ι] [∀ i, Fintype (H i)]
    (hcoprime : ∀ i j, i ≠ j → Nat.coprime (Fintype.card (H i)) (Fintype.card (H j))) :
    CompleteLattice.Independent H := by
  simpa using
    MonoidHom.independent_range_of_coprime_order (fun i => (H i).subtype)
      (commute_subtype_of_commute hcomm) hcoprime
#align subgroup.independent_of_coprime_order Subgroup.independent_of_coprime_order
#align add_subgroup.independent_of_coprime_order AddSubgroup.independent_of_coprime_order

end CommutingSubgroups

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variantb7cfd61665dcdcba6053fbc289d1e66cd66347deb8a32c909b44e3a2760fa628.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `969d03bb0764b7f983e73ecef3278aee6e08a2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
