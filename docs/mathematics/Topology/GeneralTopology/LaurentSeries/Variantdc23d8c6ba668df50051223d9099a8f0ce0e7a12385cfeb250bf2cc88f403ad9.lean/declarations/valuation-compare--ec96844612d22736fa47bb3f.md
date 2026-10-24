# valuation_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49340241-e4e2-a2ae-575e-9b9ec4840a62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:040fc23a-9e3a-257b-b084-e5a26d7b83e7",
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
  "slug": "valuation-compare--ec96844612d22736fa47bb3f",
  "source": {
    "blob": "d55ed25b74e7312f234de3998a8e927b9103b7cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1149,
    "line": 1124,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec96844612d22736fa47bb3fb0f2b68b15a4384c5aa3a6d9764081a15fec85bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:040fc23a-9e3a-257b-b084-e5a26d7b83e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1149.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variantdc23d8c6ba668df50051223d9099a8f0ce0e7a12385cfeb250bf2cc88f403ad9.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ed25b74e7312f234de3998a8e927b9103b7cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
