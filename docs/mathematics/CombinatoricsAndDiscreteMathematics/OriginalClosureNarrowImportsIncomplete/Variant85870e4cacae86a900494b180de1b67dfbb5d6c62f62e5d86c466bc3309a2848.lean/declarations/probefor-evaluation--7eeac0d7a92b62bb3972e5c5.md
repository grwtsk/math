# probeFor_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19682f8c-961a-b628-893d-f94523d97a1e",
  "kind": "theorem",
  "lexical_name": "probeFor_evaluation",
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
  "slug": "probefor-evaluation--7eeac0d7a92b62bb3972e5c5",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26851,
    "line": 26822,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eeac0d7a92b62bb3972e5c5d6691157ef07971bbf0e753153eded97fdc994b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19682f8c-961a-b628-893d-f94523d97a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26822–26851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probeFor_evaluation {A i w : Expr S}
    (hA : HasType P Γ A (.sort R.probe.seed)) (mA : WellModed γ A .data)
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data)
    (hw : HasType P Γ w (R.probe.singleType A)) (mw : WellModed γ w .data) :
    Equivalent P Γ γ (R.probe.observe A (R.probeFor L.code KY.code KP.code i) w)
      (R.recoverLift L.code KY.code KP.code A i w) := by
  let A' := R.probe.lifting.project (R.probe.lifting.inject A)
  have hA' : HasType P Γ A' (.sort R.probe.seed) := H.probe.project_typed ((H.probe.lifting.typed H.probe.seed_sorted).1 _ hA)
  have mA' : WellModed γ A' .data := H.probe.project_mode (H.probe.lifting.modes.2.1 _ mA)
  have hc : Converts A' A := (R.probe.lifting.cancel A).converts
  have hv := H.probeFor_typed KY KP hi mi
  have hQ := H.recoverLiftBody_family KY KP hA' mA' hi mi
  have ha := H.probe.uniform_evaluation hA mA hv.1 hv.2
    (by simpa only [probeFor_body_specialize] using hQ) hw mw
  have ha' : Equivalent P Γ γ (R.probe.observe A (R.probeFor L.code KY.code KP.code i) w)
      (R.recoverLift L.code KY.code KP.code A' i w) := by
    simpa only [probeFor, A', probeFor_body_specialize,recoverLiftBody_instantiate] using ha
  obtain ⟨s,hs⟩ := H.probe.funTriple.domain.1
  have hw' : HasType P Γ w (R.probe.singleType A') :=
    hw.conversion (H.probe.single_sorted hA' s hs) (.symm _ _ (R.probe.singleType_converts hc))
  have hf := H.recoverLift_formula KY KP hA mA hi mi hw mw
  have hf' := H.recoverLift_formula KY KP hA' mA' hi mi hw' mw
  have ho := H.probe.observe_formula hA mA hv.1 hv.2 hw mw
  obtain ⟨t,ht⟩ := L.triple.codomain.1
  exact ha'.trans (Equivalent.of_conversion (hf'.1 t ht) (hf.1 t ht)
    (R.recoverLift_convertA L.code KY.code KP.code i w hc))
    (ho.1 t ht) (hf'.1 t ht) (hf.1 t ht)

/-- The source rounded probe law. The assumption is the explicit non-dummy
conjunct of Adm; all other equalities are typed cancellation proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L26822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
