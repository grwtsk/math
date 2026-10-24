# source_tangent_coordinate_jet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef867c56-c30a-3bd2-d620-09f32ebd836e",
  "kind": "theorem",
  "lexical_name": "source_tangent_coordinate_jet",
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
  "slug": "source-tangent-coordinate-jet--44c6d4e2681a02e495d7b880",
  "source": {
    "blob": "3e8b8aad6399584c1de8f1dca1779f722077c02d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5SourcePhaseJet/Variantbd3e0ef8f90e723c9de617fa5596b23a49528fa24ef91f9b21b73c7c8ae8d781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c6d4e2681a02e495d7b8802326560fd94e0c2d5d7a9da1fb0413c52f2a04f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5SourcePhaseJet/Variantbd3e0ef8f90e723c9de617fa5596b23a49528fa24ef91f9b21b73c7c8ae8d781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef867c56-c30a-3bd2-d620-09f32ebd836e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_tangent_coordinate_jet (A : ℝ) (n : LowerPowerLabel A) :
    tangentAtOne 1 (sourceTangent A n) =
      sourcePhaseJet (n : ℕ) infinitesimalOne := by
  rw [sourceTangent, map_mul, AlgHom.commutes, tangent_at_one_infinitesimal,
    sourcePhaseJet, tangent_at_one_infinitesimal, deriv_chi_zero]
  simp

end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5SourcePhaseJet/Variantbd3e0ef8f90e723c9de617fa5596b23a49528fa24ef91f9b21b73c7c8ae8d781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/06550c68db4c9f87dbe2cafdd5a84bb50d120dddfa76b891c62311416ced00c5SourcePhaseJet/Variantbd3e0ef8f90e723c9de617fa5596b23a49528fa24ef91f9b21b73c7c8ae8d781.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e8b8aad6399584c1de8f1dca1779f722077c02d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
