# lift_le_pred_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82bebe8f-c6ed-cb68-0b3b-6db634163eaa",
  "kind": "theorem",
  "lexical_name": "lift_le_pred_congr",
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
  "slug": "lift-le-pred-congr--51db8d4df25902274b407d1c",
  "source": {
    "blob": "ca38a90ef5aa26680fc0cb9639d5d19aa2114c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 741,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51db8d4df25902274b407d1cbe55317cecfd930d99fa01e6f676cc4b7380c034",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82bebe8f-c6ed-cb68-0b3b-6db634163eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_le_pred_congr {i c a : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hc : HasType P Γ c B.xPredType) (mc : WellModed γ c .data)
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code
      B.relational.probe.carrier i c)) :
    Equivalent P Γ γ (B.relational.le L.code KY.code KP.code i (B.lift L.code KY.code KP.code a))
      (B.relational.le L.code KY.code KP.code c (B.lift L.code KY.code KP.code a)) := by
  have hz := H.relational_formed.probeFor_typed KY KP hi mi
  have hz' := H.relational_formed.probeFor_typed KY KP hc mc
  have la := H.lift_typed KY KP ha ma
  have fa := H.relational_formed.le_formula KY KP hi mi la.1 la.2
  have fb := H.relational_formed.le_formula KY KP hc mc la.1 la.2
  have ga := H.sb_formula KY KP hz.1 hz.2 ha ma
  have gb := H.sb_formula KY KP hz'.1 hz'.2 ha ma
  exact fa.equivalent_trans gb fb (fa.equivalent_trans ga gb (H.lift_evaluation KY KP hi mi ha ma)
    (H.sb_equivalent KY KP hz.1 hz.2 hz'.1 hz'.2 ha ma ha ma (H.part_probe_compare KY KP hi mi
      hc mc he) (H.relation_refl KY KP ha ma)))
    (H.lift_evaluation KY KP hc mc ha ma).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9abb3fc31a9b6271a21d5c87c2a20f0596ec9defa094351ab528aa04723b7462.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca38a90ef5aa26680fc0cb9639d5d19aa2114c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
