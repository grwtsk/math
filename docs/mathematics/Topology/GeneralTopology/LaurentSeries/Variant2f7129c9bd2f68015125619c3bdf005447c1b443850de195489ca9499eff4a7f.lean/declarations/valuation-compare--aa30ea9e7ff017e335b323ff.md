# valuation_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:462ad218-2db2-2959-533e-b3a6683c1b40",
  "kind": "theorem",
  "lexical_name": "valuation_compare",
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
  "slug": "valuation-compare--aa30ea9e7ff017e335b323ff",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1132,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa30ea9e7ff017e335b323fffb3182966fa402a23bad29c0bad9e7003d6f8553",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:462ad218-2db2-2959-533e-b3a6683c1b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_compare (f : K⸨X⸩) :
    Valued.v (LaurentSeriesRingEquiv K f) = Valued.v f := by
  change Valued.v (adicCompletion.ofCompletion
    ((LaurentSeriesPkg K).compare ratfuncAdicComplPkg f)) = Valued.v f
  rw [adicCompletion.valued_ofCompletion]
  let : UniformSpace (ratfuncAdicComplPkg (K := K).space) :=
      ratfuncAdicComplPkg.uniformStruct
  have raw_surj : Function.Surjective (Valued.v : (polynomialValuationX K).Completion → ℤᵐ⁰) :=
    Valued.valuedCompletion_surjective_iff.mpr <| .of_comp ((idealX K).valuation_surjective K⟮X⟯)
  rw [← valuation_LaurentSeries_equal_extension, ← compare_comp_eq_compare ratfuncAdicComplPkg _]
  · exact congr_fun (ratfuncAdicComplPkg.isDenseInducing.extend_unique
      Valued.valuedCompletion_apply (Valued.continuous_valuation_of_surjective raw_surj)).symm _
  · refine Valued.continuous_valuation_of_surjective (fun x ↦ ?_)
    obtain ⟨y, rfl⟩ := RatFunc.valuation_surjective K x
    exact ⟨.toVal _ y, rfl⟩
  · intro x
    have h_cont := Valued.continuous_valuation_of_surjective raw_surj
    rw [ratfuncAdicComplPkg.isDenseInducing.extend_unique
        Valued.valuedCompletion_apply h_cont]
    exact (h_cont.continuousAt.tendsto.comp tendsto_comap).congr
      Valued.valuedCompletion_apply

section PowerSeries

/-- In order to compare `K⟦X⟧` with the valuation subring in the `X`-adic completion of
`K⟮X⟯` we consider its alias as a subring of `K⸨X⸩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
