# properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d09722-db41-02c9-dfd2-225a9a6c836e",
  "kind": "lemma",
  "lexical_name": "properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField",
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
  "slug": "properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--d6e738ed67484cc98085f702",
  "source": {
    "blob": "1a30d89f13331687b218c27f3fa5d6f773087fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e738ed67484cc98085f702f1f211334ac6de3025ab2f5ddac780db02f6d51a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d09722-db41-02c9-dfd2-225a9a6c836e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField :
    ProperSpace K ↔ CompleteSpace K ∧ IsDiscreteValuationRing 𝒪[K] ∧ Finite 𝓀[K] := by
  simp only [properSpace_iff_compactSpace_integer,
      compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField,
      completeSpace_iff_isComplete_univ (α := 𝒪[K]), Subtype.isComplete_iff,
      NormedField.completeSpace_iff_isComplete_closedBall, Set.image_univ,
      Subtype.range_coe_subtype, mem_iff, ← mem_closedBall_zero_iff, Set.setOf_mem_eq]

end Valued.integer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a30d89f13331687b218c27f3fa5d6f773087fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
