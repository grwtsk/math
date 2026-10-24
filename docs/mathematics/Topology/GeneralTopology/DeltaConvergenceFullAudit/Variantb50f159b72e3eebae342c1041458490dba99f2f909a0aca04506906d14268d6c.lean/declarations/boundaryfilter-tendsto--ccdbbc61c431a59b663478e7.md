# boundaryFilter_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "292b58fd836a75873ca25c088a6c052be1bd611c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbece96f-07b3-07ca-b470-cc5f8e2e414d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcc959e4-2073-e3df-c5b6-7687b2aa383f",
  "kind": "theorem",
  "lexical_name": "boundaryFilter_tendsto",
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
  "slug": "boundaryfilter-tendsto--ccdbbc61c431a59b663478e7",
  "source": {
    "blob": "292b58fd836a75873ca25c088a6c052be1bd611c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccdbbc61c431a59b663478e76e5e60b8f9ad0908ebda26465b508321cbc26578",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcc959e4-2073-e3df-c5b6-7687b2aa383f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryFilter_tendsto (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := by
  have hec : Tendsto (fun j => (ε j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hε
  have hhc : Tendsto (fun j => (h j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hh
  have hz : Tendsto (fun j => (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds ((t : ℂ) * Complex.I)) := by
    simpa using hec.add tendsto_const_nhds
  have hw := W_continuous.continuousAt.tendsto.comp hz
  have hr := (tendsto_const_nhds : Tendsto (fun _ : ℕ => W ((t : ℂ) * Complex.I))
    atTop (nhds (W ((t : ℂ) * Complex.I)))).div hw ht
  have hs : Tendsto (fun j => 1 + (h j : ℂ) * ((ε j : ℂ) + (t : ℂ) * Complex.I))
      atTop (nhds (1 : ℂ)) := by
    simpa using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add (hhc.mul hz)
  have hd : Tendsto (fun j => 1 + (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds (1 + (t : ℂ) * Complex.I)) := by
    simpa [add_assoc] using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add hz
  have hall := (hr.mul ((hs.inv₀ one_ne_zero).pow 6)).div hd
    (boundary_denominator_ne_zero t)
  simp only [div_self ht, inv_one, one_pow, mul_one, one_div] at hall
  exact hall.congr' (Eventually.of_forall (fun _ => rfl))

/-- Arbitrary vanishing positive shifts and nonnegative smoothing give vanishing squared
distortion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantb50f159b72e3eebae342c1041458490dba99f2f909a0aca04506906d14268d6c.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `292b58fd836a75873ca25c088a6c052be1bd611c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
