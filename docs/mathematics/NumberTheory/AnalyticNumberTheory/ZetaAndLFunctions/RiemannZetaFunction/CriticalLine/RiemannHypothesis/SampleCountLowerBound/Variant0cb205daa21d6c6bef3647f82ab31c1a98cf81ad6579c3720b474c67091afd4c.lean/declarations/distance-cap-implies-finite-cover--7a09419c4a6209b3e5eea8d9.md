# distance_cap_implies_finite_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88a9c606-3c5b-c597-8730-83374bd663e4",
  "kind": "theorem",
  "lexical_name": "distance_cap_implies_finite_cover",
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
  "slug": "distance-cap-implies-finite-cover--7a09419c4a6209b3e5eea8d9",
  "source": {
    "blob": "feb2979a42dd5bba0b05466d33e4e829731a98d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a09419c4a6209b3e5eea8d9f1709d6f18e71570b13de7e31201f1ffcd2d0b38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a9c606-3c5b-c597-8730-83374bd663e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distance_cap_implies_finite_cover {samples : Finset ℝ} (hs : samples.Nonempty)
    {a b r : ℝ} (hcap : ∀ x ∈ Set.Icc a b, sampleDistance (samples : Set ℝ) x ≤ r) :
    ∀ x ∈ Set.Icc a b, ∃ s ∈ samples, |x - s| ≤ r := by
  have : Nonempty (samples : Set ℝ) := ⟨⟨hs.choose, hs.choose_spec⟩⟩
  have : Finite (samples : Set ℝ) := samples.finite_toSet.to_subtype
  intro x hx
  obtain ⟨s, hsmin⟩ := exists_eq_ciInf_of_finite
    (f := fun s : (samples : Set ℝ) => |x - (s : ℝ)|)
  refine ⟨s, s.property, ?_⟩
  rw [hsmin]
  exact hcap x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feb2979a42dd5bba0b05466d33e4e829731a98d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
