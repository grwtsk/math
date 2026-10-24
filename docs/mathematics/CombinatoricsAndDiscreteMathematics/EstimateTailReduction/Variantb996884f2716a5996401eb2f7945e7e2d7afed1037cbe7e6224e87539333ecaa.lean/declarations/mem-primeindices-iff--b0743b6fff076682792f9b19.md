# mem_primeIndices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be2e292-150b-db56-d9e0-3c859bc2e231",
  "kind": "theorem",
  "lexical_name": "mem_primeIndices_iff",
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
  "slug": "mem-primeindices-iff--b0743b6fff076682792f9b19",
  "source": {
    "blob": "398eb99b1f2d4efbe2308f728affcd40f5ec87f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0743b6fff076682792f9b194e77eb90d9bc5885ac8ba1c4474140a52a154b5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be2e292-150b-db56-d9e0-3c859bc2e231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primeIndices_iff
    (A : ℝ) (n : ℕ) :
    n ∈ primeIndices A ↔
      2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
  simp only [primeIndices, Finset.mem_filter,
    Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos (2 * A)).le]
  exact
    ⟨fun h ↦ ⟨h.1.1, h.2⟩,
      fun h ↦ ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantb996884f2716a5996401eb2f7945e7e2d7afed1037cbe7e6224e87539333ecaa.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398eb99b1f2d4efbe2308f728affcd40f5ec87f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
