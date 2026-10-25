# compare_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0223c6d-80a9-4971-a006-2918fd5e00e5",
  "kind": "theorem",
  "lexical_name": "compare_intro",
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
  "slug": "compare-intro--f0665b38b80132075adccc24",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1080,
    "line": 1051,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0665b38b80132075adccc24470eeb1db17851bbfc5e0251611062a38f7bfaa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0223c6d-80a9-4971-a006-2918fd5e00e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1080.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_intro {y z : Expr S}
    (hy : HasType P Γ y O.carrier) (my : WellModed γ y .data)
    (hz : HasType P Γ z O.carrier) (mz : WellModed γ z .data)
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) i,
      HasType P Δ i ((O.rename e.names).relational.channel.predicateType (O.rename
        e.names).relational.probe.carrier) →
      WellModed δ i .data → Equivalent P Δ δ
        ((O.rename e.names).observe (L.rename e).code (KY.rename e).code (KP.rename e).code i
          (y.rename e.names))
        ((O.rename e.names).observe (L.rename e).code (KY.rename e).code (KP.rename e).code i
          (z.rename e.names))) :
    Proves P Γ γ (O.compare L.code KY.code KP.code y z) := by
  obtain ⟨s,hs⟩ := KP.triple.domain.1
  apply L.all_intro_future KP (H.relational.channel.predicate_sorted
    H.relational.probe.carrier_sorted)
    (H.relational.channel.predicate_mode H.relational.probe.carrier_mode)
    (H.relational.channel.predicate_sorted H.relational.probe.carrier_sorted s hs)
      (H.compareBody_family KY KP hy my hz mz)
  intro Δ δ e i hi mi
  rw [compareBody_rename,compareBody_instantiate]
  have hi' : HasType P Δ i ((O.rename e.names).relational.channel.predicateType (O.rename
    e.names).relational.probe.carrier) := by
    simpa only [RelationalCode.p_type_rename,ObservationCode.rename] using hi
  exact (L.rename e).iff_of_equivalent
    ((H.rename e).observe_formula (KY.rename e) (KP.rename e) hi' mi (by
      simpa only [carrier_rename] using e.typing hy) (e.moded my))
    ((H.rename e).observe_formula (KY.rename e) (KP.rename e) hi' mi (by
      simpa only [carrier_rename] using e.typing hz) (e.moded mz))
    (hh Δ δ e i hi' mi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
