# AS_implies_literal_P04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b8e5255-ed8b-4667-2668-9fb90508d3a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeda88c9-f623-0f8e-124b-6dceeb62b55f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df30133d-3851-681d-66ea-899471f6008a",
  "kind": "theorem",
  "lexical_name": "AS_implies_literal_P04",
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
  "slug": "as-implies-literal-p04--05b8c7dfa97584ea37f7b482",
  "source": {
    "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 132,
    "path": "GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b8c7dfa97584ea37f7b482d85191bb50b2969f793ab68c2d392a50182d7f35",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df30133d-3851-681d-66ea-899471f6008a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AS_implies_literal_P04 (A : ReserveFunctional) (C q η C_M : ℝ)
    (hAS : ASObligation A C q η) (hM : 0 ≤ C_M)
    (hprime : PrimeHarmonicEstimate C_M)
    (chains : ∀ T : ℝ, 0 ≤ T → Nonempty (BudgetedChain T η)) : P04 := by
  apply amortized_completion_implies_P04
    (C₀ := 4 + A.initialConstant) (C₁ := C * C_M)
    (a := A.initialExponent + 1) (q := q + 1)
    (d := C * C_M) (H := C * C_M * Real.log 2)
  · linarith [A.initialConstant_nonneg]
  · exact mul_nonneg hAS.1 hM
  · linarith [A.initialExponent_nonneg]
  · linarith [hAS.2.1]
  · exact mul_nonneg hAS.1 hM
  · intro T hT
    obtain ⟨bc⟩ := chains T hT
    exact ⟨completionFromAS A C q η C_M T hAS hM hprime hT bc⟩

end PPNCP04.ASClosure

#print axioms PPNCP04.ASClosure.initial_potential_bound
#print axioms PPNCP04.ASClosure.completionFromAS
#print axioms PPNCP04.ASClosure.AS_implies_literal_P04
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9305ad5575f1e86d3109712e26845bda583a4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
