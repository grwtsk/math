# properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fc15852-9821-92de-97b8-67680eb67d54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03087f14-83a5-4513-d365-950fb30481ba",
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
  "slug": "properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--bf4887a5fdb04ff183ab1f9a",
  "source": {
    "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4887a5fdb04ff183ab1f9a7d7d4185ad6408627774e4c470b148d02e7c3ff8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03087f14-83a5-4513-d365-950fb30481ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField
    [(Valued.v : Valuation K Γ₀).RankOne] :
    ProperSpace K ↔ CompleteSpace K ∧ IsDiscreteValuationRing 𝒪[K] ∧ Finite 𝓀[K] := by
  simp only [properSpace_iff_compactSpace_integer,
      compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField,
      toNormedField.setOfPred_mem_integer_eq_closedBall,
      completeSpace_iff_isComplete_univ (α := 𝒪[K]), Subtype.isComplete_iff,
      NormedField.completeSpace_iff_isComplete_closedBall, Set.image_univ,
      Subtype.range_coe_subtype]

end Valued.integer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10b0450b575b7fa75d3b4a0530403c61ed5040b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
