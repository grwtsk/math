# functionalEquationRealStructure_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fc95636-1fec-965c-be55-d2c6553ab168",
  "kind": "theorem",
  "lexical_name": "functionalEquationRealStructure_involutive",
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
  "slug": "functionalequationrealstructure-involutive--23a623468a096e75d7973746",
  "source": {
    "blob": "671a225ffd4750d45f2e088c1a820910b44548a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a623468a096e75d7973746250463f1ee21455cec522bfe81066099fcd0ea67",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fc95636-1fec-965c-be55-d2c6553ab168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functionalEquationRealStructure_involutive
    (datum : FunctionalEquationDatum Grid)
    (vector : OrbitHilbert Grid) :
    datum.functionalEquationRealStructure
        (datum.functionalEquationRealStructure vector) = vector := by
  ext index
  rcases index with ⟨grid, spin, sheet⟩
  fin_cases spin <;> fin_cases sheet <;>
    simp [functionalEquationRealStructure, coordinateReflection,
      characterSheetFlip, spindleSpinSign,
      datum.reflection_involutive]
  all_goals
    rw [← mul_assoc, datum.rootNumber_mul_conj, one_mul]

/-- Concrete finite antiunitarity package. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671a225ffd4750d45f2e088c1a820910b44548a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
