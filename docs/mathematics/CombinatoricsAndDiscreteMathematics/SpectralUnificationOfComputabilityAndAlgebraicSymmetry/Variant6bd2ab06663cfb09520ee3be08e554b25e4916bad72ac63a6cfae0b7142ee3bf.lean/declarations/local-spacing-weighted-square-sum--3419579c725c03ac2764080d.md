# local_spacing_weighted_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c7a215b-7a32-c695-cb0a-8ea67d30d8ed",
  "kind": "theorem",
  "lexical_name": "local_spacing_weighted_square_sum",
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
  "slug": "local-spacing-weighted-square-sum--3419579c725c03ac2764080d",
  "source": {
    "blob": "e31a77e0f41e9ecbb3ccce9654420547ab6b0e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3419579c725c03ac2764080d19d342f7e9f790df9f1ad914620b61b1f816b8bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7a215b-7a32-c695-cb0a-8ea67d30d8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_spacing_weighted_square_sum (N : ℕ) (c : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N,
      (c n / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1))) =
      ∑ n ∈ Finset.Icc 1 N, (((n : ℝ) + 1) / (n : ℝ)) * (c n) ^ 2 := by
  apply Finset.sum_congr rfl
  intro n hn
  exact local_spacing_weighted_coefficient_square n (Finset.mem_Icc.mp hn).1 (c n)

/-- The last adjacent gap in a finite inventory has the reciprocal predecessor upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31a77e0f41e9ecbb3ccce9654420547ab6b0e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
