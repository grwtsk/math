# IndepFun.process_indepFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53b80060-26bc-2910-e010-efb44185838b",
  "kind": "lemma",
  "lexical_name": "IndepFun.process_indepFun",
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
  "slug": "indepfun-process-indepfun--d01c9d8914d28d32ba012461",
  "source": {
    "blob": "2362a7c914b9f8a3015e4c5c2628628019deb82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 98,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01c9d8914d28d32ba012461ab577d04cc8eda6666710d35c7c1cf56c3b70d7b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b80060-26bc-2910-e010-efb44185838b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.process_indepFun {𝓧 : S → Type*} {𝓨 : Type*}
    [∀ i, MeasurableSpace (𝓧 i)] [MeasurableSpace 𝓨] {X : (i : S) → Ω → 𝓧 i}
    {Y : Ω → 𝓨} (hX : ∀ i, Measurable (X i)) (hY : Measurable Y)
    (h : ∀ (I : Finset S),
      IndepFun (fun ω (i : I) ↦ X i ω) Y κ P) [IsZeroOrMarkovKernel κ] :
    IndepFun (fun ω i ↦ X i ω) Y κ P := by
  -- The π-system obtained by pulling back the π-system of square cylinders by `X`.
  let πX := {s : Set Ω | ∃ t ∈ squareCylinders (fun i ↦ {s : Set (𝓧 i) | MeasurableSet s}),
      (fun ω i ↦ X i ω) ⁻¹' t = s}
  have πX_pi : IsPiSystem πX :=
    IsPiSystem.comap (isPiSystem_squareCylinders (fun _ ↦ isPiSystem_measurableSet) (by simp)) _
  have πX_gen : (MeasurableSpace.pi.comap fun ω i ↦ X i ω) = generateFrom πX := by
    rw [generateFrom_squareCylinders.symm, MeasurableSpace.comap_generateFrom]
    rfl
  -- To prove independence, we prove independence of the generating π-system with the `σ`-algebra.
  refine IndepSets.indep (measurable_pi_iff.2 hX).comap_le hY.comap_le
    πX_pi (@isPiSystem_measurableSet Ω (.comap Y inferInstance)) πX_gen
    (@generateFrom_measurableSet Ω (.comap Y inferInstance)).symm ?_
  rintro - - ⟨-, ⟨I, s, hs, rfl⟩, rfl⟩ ⟨t, ht, rfl⟩
  simp only [Set.mem_pi, Set.mem_univ, Set.mem_ofPred_eq, forall_const] at hs
  have : (fun ω i ↦ X i ω) ⁻¹' .pi I s =
      (fun ω (i : I) ↦ X i ω) ⁻¹' .pi (SetLike.coe Finset.univ) (fun i ↦ s i)
       := by
    ext; simp
  have h1 : MeasurableSet <| .pi (SetLike.coe Finset.univ) (fun (i : I) ↦ s i) :=
    .pi (Finset.countable_toSet _) (fun _ _ ↦ hs _)
  filter_upwards [(h I).measure_inter_preimage_eq_mul _ _ h1 ht] with ω hω
  rw [this, hω]

/-- A stochastic process $(X_s)_{s \in S}$ is independent from a random variable $Y$ if
for all $s_1, ..., s_p \in S$ the family $(X_{s_1}, ..., X_{s_p})$ is independent from $Y$.

This version only requires a.e.-measurability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2362a7c914b9f8a3015e4c5c2628628019deb82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
