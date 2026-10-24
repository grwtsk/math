# gaussianDyadic_reassembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcc74645-e6be-148d-46f0-2f3f291fd2bd",
  "kind": "theorem",
  "lexical_name": "gaussianDyadic_reassembly",
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
  "slug": "gaussiandyadic-reassembly--edeefc7824bd4c0ab7e52e62",
  "source": {
    "blob": "d99d4f0b30dbed998bc277c3695026f3337411f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 64,
    "path": "GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edeefc7824bd4c0ab7e52e62ac60d03c6bf9773a7e824b54f3f8cddf9aceef2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/GaussianDyadic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcc74645-e6be-148d-46f0-2f3f291fd2bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussianDyadic_reassembly (Z : ℝ) (hZ : 0 < Z) :
    (∑' j : ℕ, ∑' n : ℕ, gaussianDyadicTerm Z n j) =
      ∑' n : ℕ, gaussianMellinProfile ((n+1:ℝ)/Z) := by
  exact annular_reassembly (fun n : ℕ => gaussianMellinProfile ((n+1:ℝ)/Z))
    (fun n : ℕ => (n+1:ℝ)) (gaussianMellinProfile_sum_summable Z hZ) (by intro n _; have hn : (0:ℝ) ≤ n := Nat.cast_nonneg n; linarith)

/-- The actual ordinary-zeta contour is the convergent sum of finite annular pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/GaussianDyadic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99d4f0b30dbed998bc277c3695026f3337411f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
