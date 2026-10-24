# tendsto_card_div_pow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a434ce1-25ec-6b3a-c3af-8cfdf05326eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c334453d-34d3-9796-02e2-bdd9385eaf3c",
  "kind": "theorem",
  "lexical_name": "tendsto_card_div_pow'",
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
  "slug": "tendsto-card-div-pow--f489ac055dee1650ea7e000b",
  "source": {
    "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f489ac055dee1650ea7e000bbc87db3a37770169eb6844d98318f20d1be35e6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c334453d-34d3-9796-02e2-bdd9385eaf3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_card_div_pow' {s : Set E} (hs₁ : IsBounded s) (hs₂ : MeasurableSet s)
    (hs₃ : volume (frontier s) = 0) :
    Tendsto (fun n : ℕ ↦ (Nat.card (s ∩ (n : ℝ)⁻¹ • L : Set E) : ℝ) / n ^ finrank ℝ E)
      atTop (𝓝 (volume.real s / covolume L)) := by
  let b := Module.Free.chooseBasis ℤ L
  convert tendsto_card_div_pow'' b hs₁ hs₂ ?_
  · rw [← finrank_eq_card_chooseBasisIndex, ZLattice.rank ℝ L]
  · simp only [measureReal_def]
    rw [volume_image_eq_volume_div_covolume' L b hs₂.nullMeasurableSet, ENNReal.toReal_div,
      ENNReal.toReal_ofReal (covolume_pos L volume).le]
  · rw [frontier_equivFun, volume_image_eq_volume_div_covolume', hs₃, ENNReal.zero_div]
    exact NullMeasurableSet.of_null hs₃

/-- A version of `ZLattice.covolume.tendsto_card_le_div` for the `InnerProductSpace` case;
see the `Naming convention` section in the introduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7810ba00e80e2e69c5122f174733290d8d03c1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
