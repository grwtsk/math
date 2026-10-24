# iIndepFun.congr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dafed1a6-f9ca-b27c-c0a3-1ff2daff343a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90c57465-1ce7-5885-ae77-030706b98ac7",
  "kind": "theorem",
  "lexical_name": "iIndepFun.congr'",
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
  "slug": "iindepfun-congr--c9e231186b1b0a6f4c61b5ef",
  "source": {
    "blob": "e8780ab9b4f32c50c2eb25780f1395e87224e69d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 167,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e231186b1b0a6f4c61b5efddfbb2a9b4391492b80b7bc6f8c170de9edcd9aa",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90c57465-1ce7-5885-ae77-030706b98ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.congr' {β : ι → Type*} {mβ : ∀ i, MeasurableSpace (β i)}
    {f g : Π i, Ω → β i} (hf : iIndepFun f κ μ)
    (h : ∀ i, ∀ᵐ a ∂μ, f i =ᵐ[κ a] g i) :
    iIndepFun g κ μ := by
  rw [iIndepFun_iff_measure_inter_preimage_eq_mul] at hf ⊢
  intro S sets hmeas
  have : ∀ᵐ a ∂μ, ∀ i ∈ S, f i =ᵐ[κ a] g i :=
    (ae_ball_iff (Finset.countable_toSet S)).2 (fun i hi ↦ h i)
  filter_upwards [this, hf S hmeas] with a ha h'a
  have A i (hi : i ∈ S) : (κ a) (g i ⁻¹' sets i) = (κ a) (f i ⁻¹' sets i) := by
    apply measure_congr
    filter_upwards [ha i hi] with ω hω
    change (g i ω ∈ sets i) = (f i ω ∈ sets i)
    simp [hω]
  have B : (κ a) (⋂ i ∈ S, g i ⁻¹' sets i) = (κ a) (⋂ i ∈ S, f i ⁻¹' sets i) := by
    apply measure_congr
    filter_upwards [(ae_ball_iff (Finset.countable_toSet S)).2 ha] with ω hω
    change (ω ∈ ⋂ i ∈ S, g i ⁻¹' sets i) = (ω ∈ ⋂ i ∈ S, f i ⁻¹' sets i)
    simp +contextual [hω]
  convert! h'a using 2 with i hi
  exact A i hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variantb070426f05b1c1ead5505448040efdfee5fb61078a527e9c858ec2e7d141b77c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8780ab9b4f32c50c2eb25780f1395e87224e69d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
