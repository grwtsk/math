# LipschitzOnWith.extend_finite_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7acfd4dbd8e38944b0e6b935086dda443187b532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ba2474-fe76-323d-6344-0c394dbc791c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b7ef124-1ab8-6fee-880b-1b6c87fadae2",
  "kind": "theorem",
  "lexical_name": "LipschitzOnWith.extend_finite_dimension",
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
  "slug": "lipschitzonwith-extend-finite-dimension--0a01b4b6c4091ca74f8acbc1",
  "source": {
    "blob": "7acfd4dbd8e38944b0e6b935086dda443187b532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 210,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a01b4b6c4091ca74f8acbc1577a103c7aece8403802a7a1554b350f892fda12",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7ef124-1ab8-6fee-880b-1b6c87fadae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LipschitzOnWith.extend_finite_dimension {α : Type*} [PseudoMetricSpace α] {E' : Type*}
    [NormedAddCommGroup E'] [NormedSpace ℝ E'] [FiniteDimensional ℝ E'] {s : Set α} {f : α → E'}
    {K : ℝ≥0} (hf : LipschitzOnWith K f s) :
    ∃ g : α → E', LipschitzWith (lipschitzExtensionConstant E' * K) g ∧ EqOn f g s := by
  /- This result is already known for spaces `ι → ℝ`. We use a continuous linear equiv between
    `E'` and such a space to transfer the result to `E'`. -/
  let ι : Type _ := Basis.ofVectorSpaceIndex ℝ E'
  let A := (Basis.ofVectorSpace ℝ E').equivFun.toContinuousLinearEquiv
  have LA : LipschitzWith ‖A.toContinuousLinearMap‖₊ A := by apply A.lipschitzWith
  have L : LipschitzOnWith (‖A.toContinuousLinearMap‖₊ * K) (A ∘ f) s :=
    LA.comp_lipschitzOnWith hf
  obtain ⟨g, hg, gs⟩ :
    ∃ g : α → ι → ℝ, LipschitzWith (‖A.toContinuousLinearMap‖₊ * K) g ∧ EqOn (A ∘ f) g s :=
    L.extend_pi
  refine ⟨A.symm ∘ g, ?_, ?_⟩
  · have LAsymm : LipschitzWith ‖A.symm.toContinuousLinearMap‖₊ A.symm := by
      apply A.symm.lipschitzWith
    apply (LAsymm.comp hg).weaken
    rw [lipschitzExtensionConstant, ← mul_assoc]
    exact mul_le_mul' (le_max_left _ _) le_rfl
  · intro x hx
    have : A (f x) = g x := gs hx
    simp only [(· ∘ ·), ← this, A.symm_apply_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant2c8d6c502390a2fe2c98371631dd97a0b2316c9f594be7972638eb2da326925f.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acfd4dbd8e38944b0e6b935086dda443187b532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
