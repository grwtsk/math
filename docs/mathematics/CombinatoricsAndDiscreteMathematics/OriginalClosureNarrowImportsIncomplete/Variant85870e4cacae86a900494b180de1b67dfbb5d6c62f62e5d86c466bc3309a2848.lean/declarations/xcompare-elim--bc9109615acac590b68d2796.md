# xCompare_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc020d0a-7cf9-52d7-efb7-f1da41f7d49f",
  "kind": "theorem",
  "lexical_name": "xCompare_elim",
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
  "slug": "xcompare-elim--bc9109615acac590b68d2796",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22476,
    "line": 22465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9109615acac590b68d27969c470a86e869b20590720dcb20ace335cfae9222",
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

Occurrence: `result:dc020d0a-7cf9-52d7-efb7-f1da41f7d49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22465–22476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xCompare_elim {x y i : Expr S}
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data)
    (hy : HasType P Γ y (R.channel.logicalType R.probe.carrier)) (my : WellModed γ y .data)
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data)
    (he : Proves P Γ γ (R.xCompare L.code KY.code KP.code x y)) :
    Equivalent P Γ γ (R.le L.code KY.code KP.code i x) (R.le L.code KY.code KP.code i y) := by
  obtain ⟨s,hs⟩ := KP.triple.domain.1
  have hh := L.all_elim_family KP (H.channel.predicate_sorted H.probe.carrier_sorted)
    (H.channel.predicate_mode H.probe.carrier_mode) (H.channel.predicate_sorted H.probe.carrier_sorted s hs)
    (H.xCompareBody_family KY KP hx mx hy my) hi mi he
  rw [xCompareBody_instantiate,LogicSetup.code_iff] at hh
  exact L.equivalent_of_iff (H.le_formula KY KP hi mi hx mx) (H.le_formula KY KP hi mi hy my) hh
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L22465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
