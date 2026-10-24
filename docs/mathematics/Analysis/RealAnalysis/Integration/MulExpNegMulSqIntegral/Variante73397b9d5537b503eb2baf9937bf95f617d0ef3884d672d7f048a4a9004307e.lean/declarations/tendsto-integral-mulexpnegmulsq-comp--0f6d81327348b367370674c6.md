# tendsto_integral_mulExpNegMulSq_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80d676451ef5958ccabab3f12cb338eb19fc464a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e83ef32-6f76-f936-c4bd-b29b3827e352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6d40290-e207-484a-608b-ea66a739a097",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_mulExpNegMulSq_comp",
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
  "slug": "tendsto-integral-mulexpnegmulsq-comp--0f6d81327348b367370674c6",
  "source": {
    "blob": "80d676451ef5958ccabab3f12cb338eb19fc464a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f6d81327348b367370674c677df409def06c2fdc61c7ceef8b44621b60a5b4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d40290-e207-484a-608b-ea66a739a097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_mulExpNegMulSq_comp (g : E →ᵇ ℝ) :
    Tendsto (fun ε => ∫ x, mulExpNegMulSq ε (g x) ∂P) (𝓝[>] 0) (𝓝 (∫ x, g x ∂P)) := by
  apply tendsto_of_seq_tendsto
  intro u hu
  obtain ⟨N, hupos⟩ := eventually_atTop.mp (tendsto_nhdsWithin_iff.mp hu).2
  apply tendsto_integral_filter_of_norm_le_const ?h_meas ?h_bound ?h_lim
  · exact Eventually.of_forall (fun n => g.continuous.mulExpNegMulSq.aestronglyMeasurable)
  · use norm g
    rw [eventually_atTop]
    use N
    intro n hn
    exact Eventually.of_forall
      (fun _ => abs_mulExpNegMulSq_comp_le_norm g (le_of_lt (Set.mem_Ioi.mp (hupos n hn))))
  · exact Eventually.of_forall (fun _ => (tendsto_nhdsWithin_of_tendsto_nhds
        tendsto_mulExpNegMulSq).comp hu)

/-- The integral of `mulExpNegMulSq ε ∘ g` with respect to a finite measure `P` can be
approximated by the integral of the sequence approximating the exponential function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variante73397b9d5537b503eb2baf9937bf95f617d0ef3884d672d7f048a4a9004307e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d676451ef5958ccabab3f12cb338eb19fc464a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
