# properlyDiscontinuousSMul_iff_properSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1601b70c59ea07a092698d27c3315c690b1a09f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b33bdd3fcf90b22bd3f2f47bef48d5aff32967518386cb7fdbecb592df8f6ee6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c239c76b-8e46-0e60-be5f-932e20811ccb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5ebfdb9-1dc1-e01f-545a-31ae60486f5e",
  "kind": "theorem",
  "lexical_name": "properlyDiscontinuousSMul_iff_properSMul",
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
  "slug": "properlydiscontinuoussmul-iff-propersmul--68df5c83329db657f8b9485d",
  "source": {
    "blob": "1601b70c59ea07a092698d27c3315c690b1a09f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variantb33bdd3fcf90b22bd3f2f47bef48d5aff32967518386cb7fdbecb592df8f6ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68df5c83329db657f8b9485d754c6a45930cb1597eeb33e05d173b542cec823a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGenerated/Variantb33bdd3fcf90b22bd3f2f47bef48d5aff32967518386cb7fdbecb592df8f6ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ebfdb9-1dc1-e01f-545a-31ae60486f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properlyDiscontinuousSMul_iff_properSMul [DiscreteTopology G] [ContinuousConstSMul G X] :
    ProperlyDiscontinuousSMul G X ↔ ProperSMul G X := by
  have : ContinuousSMul G X := ⟨continuous_prod_of_discrete_left.mpr continuous_const_smul⟩
  simp only [MulAction.properSMul_iff_isCompact_setOfPred_inter_nonempty, isCompact_iff_finite]
  rw [properlyDiscontinuousSMul_iff]

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGenerated/Variantb33bdd3fcf90b22bd3f2f47bef48d5aff32967518386cb7fdbecb592df8f6ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variantb33bdd3fcf90b22bd3f2f47bef48d5aff32967518386cb7fdbecb592df8f6ee6.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1601b70c59ea07a092698d27c3315c690b1a09f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
