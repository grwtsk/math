# hasGaussianLaw_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c28af64482899b2b9d8c9f43cccbb5b169514ceb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0d6e497-ff09-4df2-be69-dfd67d7e3cfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c418a0b1-851a-72b4-cb60-de2a3e3f4c55",
  "kind": "lemma",
  "lexical_name": "hasGaussianLaw_increments",
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
  "slug": "hasgaussianlaw-increments--565c24a527b08361700d6108",
  "source": {
    "blob": "c28af64482899b2b9d8c9f43cccbb5b169514ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:565c24a527b08361700d61080ff710b14f7ce18bb2eb448e0a997761ddadf266",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c418a0b1-851a-72b4-cb60-de2a3e3f4c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasGaussianLaw_increments (hX : IsGaussianProcess X P) {n : ℕ} {t : Fin (n + 1) → T} :
    HasGaussianLaw (fun ω (i : Fin n) ↦ X (t i.succ) ω - X (t i.castSucc) ω) P := by
  classical
  let L : ((univ.image t) → E) →L[ℝ] Fin n → E :=
    { toFun x i := x ⟨t i.succ, by simp⟩ - x ⟨t i.castSucc, by simp⟩
      map_add' x y := by ext; simp; abel
      map_smul' m x := by ext; simp; module }
  exact (hX.hasGaussianLaw _).map L

end Maps

section Transformations

/-! ### Operations that preserve Gaussianity -/

variable [NormedSpace ℝ E] [SecondCountableTopology E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [MeasurableSpace F]
  [BorelSpace F] [SecondCountableTopology F] {Y : S → Ω → F}

/-- If a stochastic process `Y` is such that for each `s`, `Y s` can be written as a linear
combination of finitely many values of a Gaussian process, then `Y` is a Gaussian process. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c28af64482899b2b9d8c9f43cccbb5b169514ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
