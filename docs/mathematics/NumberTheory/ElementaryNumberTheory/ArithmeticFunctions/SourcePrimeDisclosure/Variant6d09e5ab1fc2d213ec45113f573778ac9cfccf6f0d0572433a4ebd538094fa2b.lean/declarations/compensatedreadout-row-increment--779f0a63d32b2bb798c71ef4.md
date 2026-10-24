# compensatedReadout_row_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a9bfe61-0f51-238a-b753-5f9e77c6ab61",
  "kind": "theorem",
  "lexical_name": "compensatedReadout_row_increment",
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
  "slug": "compensatedreadout-row-increment--779f0a63d32b2bb798c71ef4",
  "source": {
    "blob": "0016f32ce7bbe576202a2ff26341fb06622746f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 245,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779f0a63d32b2bb798c71ef438efd0d400ec6ed59f3d1ece947a07cd3f40b03c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9bfe61-0f51-238a-b753-5f9e77c6ab61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedReadout_row_increment (q : ComplexL2) (I : Finset ℕ)
    (a b d : ℕ → ℂ) (M : ℝ) :
    compensatedReadout q I a (b + d) M - compensatedReadout q I a b M =
      (⟪finiteProfile q I false false a,
        reflection (finiteProfile q I false false d)⟫_ℂ).re - physicalDiagonal q I a d := by
  have hs : finiteProfile q I false false (b + d) =
      finiteProfile q I false false b + finiteProfile q I false false d := by
    simp only [finiteProfile, Pi.add_apply, add_smul, Finset.sum_add_distrib]
  have hd : physicalDiagonal q I a (b + d) =
      physicalDiagonal q I a b + physicalDiagonal q I a d := by
    simp only [physicalDiagonal, Pi.add_apply, mul_add, add_mul,
      Finset.sum_add_distrib, Complex.add_re]
  simp only [compensatedReadout, hs, hd, map_add, inner_add_right, Complex.add_re]
  ring

/-- If both arithmetic rows advance, the two cross terms and new/new work remain together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0016f32ce7bbe576202a2ff26341fb06622746f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
