# literal_refinement_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8243d98a-e226-4322-6baf-5f78114eb519",
  "kind": "theorem",
  "lexical_name": "literal_refinement_increment",
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
  "slug": "literal-refinement-increment--82ea38a315b70b1add6b9b6d",
  "source": {
    "blob": "14b478b6ad911d3c976b152c8e7a7c35e423b1f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82ea38a315b70b1add6b9b6dd20297b8158cef9793a05deb9b616f132d790635",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8243d98a-e226-4322-6baf-5f78114eb519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_refinement_increment (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    arithmeticReadout B hB - arithmeticReadout A hA =
      (pairing ((transportAt A B)ᴴ * matrixAt B hB * transportAt A B - matrixAt A hA)
        (firstAt A) (secondAt A) +
      pairing (matrixAt B hB) (transportAt A B *ᵥ firstAt A) (secondIncrement A B) +
      pairing (matrixAt B hB) (firstIncrement A B) (transportAt A B *ᵥ secondAt A) +
      pairing (matrixAt B hB) (firstIncrement A B) (secondIncrement A B)).re -
      (centeredDeletedDiagonal B - centeredDeletedDiagonal A) -
      (independentMainTerm B - independentMainTerm A) := by
  rw [literal_readout, literal_readout]
  have h := congrArg Complex.re (refinement_increment (matrixAt A hA) (matrixAt B hB)
    (transportAt A B) (firstAt A) (secondAt A) (firstIncrement A B) (secondIncrement A B))
  rw [← first_refinement, ← second_refinement] at h
  simp only [Complex.sub_re] at h
  linear_combination h

end FormalResearch.MutationGame.SourceRefinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b478b6ad911d3c976b152c8e7a7c35e423b1f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
