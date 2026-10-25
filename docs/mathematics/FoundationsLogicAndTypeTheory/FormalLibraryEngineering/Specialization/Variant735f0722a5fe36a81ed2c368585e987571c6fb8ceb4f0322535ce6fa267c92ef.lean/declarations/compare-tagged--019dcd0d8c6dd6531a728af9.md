# compare_tagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43432404-76fd-8daf-bde8-d141a90ce358",
  "kind": "theorem",
  "lexical_name": "compare_tagged",
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
  "slug": "compare-tagged--019dcd0d8c6dd6531a728af9",
  "source": {
    "blob": "b5f21e36507710d4ab09326615af7cc30053d552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1324,
    "line": 1286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:019dcd0d8c6dd6531a728af9c3cc59ab62abe09ad45e9de68dac04b98d76ad62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43432404-76fd-8daf-bde8-d141a90ce358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1286–1324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_tagged {x z : Expr S} (t u : Fin 3)
    (hx : HasType P Γ x (O.relational.channel.logicalType O.relational.probe.carrier)) (mx :
      WellModed γ x .data)
    (hz : HasType P Γ z (O.relational.channel.logicalType O.relational.probe.carrier)) (mz :
      WellModed γ z .data) :
    Equivalent P Γ γ (O.compare L.code KY.code KP.code (O.tagged L.code t x) (O.tagged L.code u z))
      (O.relational.xCompare L.code KY.code KP.code x z) := by
  have ht := H.tagged_typed t hx mx
  have hu := H.tagged_typed u hz mz
  apply L.all_equivalent_future KP (H.relational.channel.predicate_sorted
    H.relational.probe.carrier_sorted)
    (H.relational.channel.predicate_mode H.relational.probe.carrier_mode)
    (H.compareBody_family KY KP ht.1 ht.2 hu.1 hu.2) (H.relational.xCompareBody_family KY KP
      hx mx hz mz)
  intro Δ δ e i hi mi
  rw [compareBody_rename,compareBody_instantiate,RelationalCode.xCompareBody_rename,
    RelationalCode.xCompareBody_instantiate,
    tagged_rename,tagged_rename]
  have hi' : HasType P Δ i ((O.rename e.names).relational.channel.predicateType (O.rename
    e.names).relational.probe.carrier) := by
    simpa only [RelationalCode.p_type_rename,ObservationCode.rename] using hi
  have hx' : HasType P Δ (x.rename e.names) ((O.rename e.names).relational.channel.logicalType
    (O.rename e.names).relational.probe.carrier) := by
    simpa only [ObservationCode.rename] using RelationalCode.Formed.x_typed_rename (R :=
      O.relational) e hx
  have hz' : HasType P Δ (z.rename e.names) ((O.rename e.names).relational.channel.logicalType
    (O.rename e.names).relational.probe.carrier) := by
    simpa only [ObservationCode.rename] using RelationalCode.Formed.x_typed_rename (R :=
      O.relational) e hz
  have ht' := (H.rename e).tagged_typed t hx' (e.moded mx)
  have hu' := (H.rename e).tagged_typed u hz' (e.moded mz)
  exact (L.rename e).iff_equivalent
    ((H.rename e).observe_formula (KY.rename e) (KP.rename e) hi' mi ht'.1 ht'.2)
    ((H.rename e).relational.le_formula (KY.rename e) (KP.rename e) hi' mi hx' (e.moded mx))
    ((H.rename e).observe_formula (KY.rename e) (KP.rename e) hi' mi hu'.1 hu'.2)
    ((H.rename e).relational.le_formula (KY.rename e) (KP.rename e) hi' mi hz' (e.moded mz))
    ((H.rename e).tagged_observe (KY.rename e) (KP.rename e) t hi' mi hx' (e.moded mx))
    ((H.rename e).tagged_observe (KY.rename e) (KP.rename e) u hi' mi hz' (e.moded mz))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean#L1286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f21e36507710d4ab09326615af7cc30053d552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
