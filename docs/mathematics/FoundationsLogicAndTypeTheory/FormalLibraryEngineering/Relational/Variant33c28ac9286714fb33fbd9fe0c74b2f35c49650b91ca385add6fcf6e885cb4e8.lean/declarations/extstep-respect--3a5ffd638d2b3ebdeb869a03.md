# extStep_respect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb208bc-441f-b725-32b5-d0787eb93936",
  "kind": "theorem",
  "lexical_name": "extStep_respect",
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
  "slug": "extstep-respect--3a5ffd638d2b3ebdeb869a03",
  "source": {
    "blob": "bf3b987541ba266df9ef6b259f9b72b03cd16180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1781,
    "line": 1759,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a5ffd638d2b3ebdeb869a037334e165e8ebcdd1556c3a42df947d2889ab29e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb208bc-441f-b725-32b5-d0787eb93936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1759–1781.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extStep_respect {i c x y : Expr S}
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data)
    (hc : HasType P Γ c (R.channel.predicateType R.probe.carrier)) (mc : WellModed γ c .data)
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data)
    (hy : HasType P Γ y (R.channel.logicalType R.probe.carrier)) (my : WellModed γ y .data)
    (he : Proves P Γ γ (R.channel.predCompare L.code KY.code R.probe.carrier i c)) :
    Equivalent P Γ γ (R.extStep L.code KY.code KP.code i x y) (R.extStep L.code KY.code
      KP.code c x y) := by
  have ex := H.channel.predCompare_elim H.probe.carrier_sorted H.probe.carrier_mode KY hi mi
    hc mc hx mx he
  have ey := H.channel.predCompare_elim H.probe.carrier_sorted H.probe.carrier_mode KY hi mi
    hc mc hy my he
  have fi := H.channel.eval_formula H.probe.carrier_sorted H.probe.carrier_mode hi mi hx mx
  have fc := H.channel.eval_formula H.probe.carrier_sorted H.probe.carrier_mode hc mc hx mx
  have fi' := H.channel.eval_formula H.probe.carrier_sorted H.probe.carrier_mode hi mi hy my
  have fc' := H.channel.eval_formula H.probe.carrier_sorted H.probe.carrier_mode hc mc hy my
  have fr := H.xCompare_formula KY KP hx mx hy my
  apply L.equivalent_of_iff (H.extStep_formula KY KP hi mi hx mx hy my)
    (H.extStep_formula KY KP hc mc hx mx hy my)
  change Proves P Γ γ (L.iff (L.imp _ (L.iff _ _)) (L.imp _ (L.iff _ _)))
  pts_pl L using [ex,ey]

omit H in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean#L1759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b987541ba266df9ef6b259f9b72b03cd16180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
