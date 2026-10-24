# properlyDiscontinuousSMul_iff_properSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfef9d95-df38-180f-b662-405d4e3f4efc",
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
  "slug": "properlydiscontinuoussmul-iff-propersmul--d710bfad1c754413702d9ca0",
  "source": {
    "blob": "30295c1898cad0bd020f91aa8fc56f5f7d812260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d710bfad1c754413702d9ca07597d3ee4b493730bab85d53051066204f0a651f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfef9d95-df38-180f-b662-405d4e3f4efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–109.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2c5d84867cad24abcc5179767c37ba7a710f690f67d5de7a6c84ec697019affd.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30295c1898cad0bd020f91aa8fc56f5f7d812260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
