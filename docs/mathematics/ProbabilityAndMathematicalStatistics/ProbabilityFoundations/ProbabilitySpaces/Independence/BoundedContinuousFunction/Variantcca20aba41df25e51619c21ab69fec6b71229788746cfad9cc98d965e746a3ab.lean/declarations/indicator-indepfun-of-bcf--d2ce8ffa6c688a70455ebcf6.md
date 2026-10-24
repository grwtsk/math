# indicator_indepFun_of_bcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d87ced946e8d5bca0ae415deb7151aba855d7d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cca20aba41df25e51619c21ab69fec6b71229788746cfad9cc98d965e746a3ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ada8d9ed-d03e-9e4b-c06b-8a16e7cab48a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2dd20ec-419b-035e-2aeb-71e97765b376",
  "kind": "lemma",
  "lexical_name": "indicator_indepFun_of_bcf",
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
  "slug": "indicator-indepfun-of-bcf--d2ce8ffa6c688a70455ebcf6",
  "source": {
    "blob": "7d87ced946e8d5bca0ae415deb7151aba855d7d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 244,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantcca20aba41df25e51619c21ab69fec6b71229788746cfad9cc98d965e746a3ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2ce8ffa6c688a70455ebcf62e9b4444ac92f7021e145d74b4eb138b2e146e14",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantcca20aba41df25e51619c21ab69fec6b71229788746cfad9cc98d965e746a3ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2dd20ec-419b-035e-2aeb-71e97765b376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indicator_indepFun_of_bcf
    {A : Set Ω} (mA : NullMeasurableSet A P) (mZ : AEMeasurable Z P)
    (h : ∀ f : G →ᵇ ℝ, ∫ ω in A, f (Z ω) ∂P = P.real A * ∫ ω, f (Z ω) ∂P) :
    (A.indicator (1 : Ω → ℝ)) ⟂ᵢ[P] Z := by
  suffices (A.indicator (1 : Ω → ℝ)) ⟂ᵢ[P] (fun ω (_ : Unit) ↦ Z ω) from
    this.comp (measurable_id) (measurable_pi_apply ())
  refine indicator_indepFun_pi_of_prod_bcf mA (fun _ ↦ mZ) fun f ↦ ?_
  convert! h (f ()) <;> simp

end Indicator

section IndepSets

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantcca20aba41df25e51619c21ab69fec6b71229788746cfad9cc98d965e746a3ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantcca20aba41df25e51619c21ab69fec6b71229788746cfad9cc98d965e746a3ab.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d87ced946e8d5bca0ae415deb7151aba855d7d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
