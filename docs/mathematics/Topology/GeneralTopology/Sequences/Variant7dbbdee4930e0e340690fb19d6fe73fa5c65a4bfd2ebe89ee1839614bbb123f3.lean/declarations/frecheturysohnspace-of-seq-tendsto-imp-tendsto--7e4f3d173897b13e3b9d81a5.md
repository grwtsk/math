# FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11873c26-2753-8f7f-f737-e220348e343e",
  "kind": "theorem",
  "lexical_name": "FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto",
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
  "slug": "frecheturysohnspace-of-seq-tendsto-imp-tendsto--7e4f3d173897b13e3b9d81a5",
  "source": {
    "blob": "1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e4f3d173897b13e3b9d81a5c258ab229dbf0f2b9449cc60c4129d2a8ba17778",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11873c26-2753-8f7f-f737-e220348e343e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto
    (h : ∀ (f : X → Prop) (a : X),
      (∀ u : ℕ → X, Tendsto u atTop (𝓝 a) → Tendsto (f ∘ u) atTop (𝓝 (f a))) → ContinuousAt f a) :
    FrechetUrysohnSpace X := by
  refine ⟨fun s x hcx => ?_⟩
  by_cases hx : x ∈ s;
  · exact subset_seqClosure hx
  · obtain ⟨u, hux, hus⟩ : ∃ u : ℕ → X, Tendsto u atTop (𝓝 x) ∧ ∃ᶠ x in atTop, u x ∈ s
    · simpa only [ContinuousAt, hx, tendsto_nhds_true, (· ∘ ·), ← not_frequently, exists_prop,
        ← mem_closure_iff_frequently, hcx, imp_false, not_forall, not_not] using h (· ∉ s) x
    rcases extraction_of_frequently_atTop hus with ⟨φ, φ_mono, hφ⟩
    exact ⟨u ∘ φ, hφ, hux.comp φ_mono.tendsto_atTop⟩
#align frechet_urysohn_space.of_seq_tendsto_imp_tendsto FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto

-- see Note [lower instance priority]
/-- Every first-countable space is a Fréchet-Urysohn space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
