# intersectionNondeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31ea03217800967c54318e7945985158a156537e21c8d4fec34132c07993e032",
  "kind": "abbrev",
  "lexical_name": "intersectionNondeg",
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
  "slug": "intersectionnondeg--d4ad73b5a4a3580d2ebfe69c",
  "source": {
    "blob": "29e4d51f3416747817f8956870bd6092cb4690d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4ad73b5a4a3580d2ebfe69c5ac168f3c4635620587bf42d58b1e97b66510e3a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31ea03217800967c54318e7945985158a156537e21c8d4fec34132c07993e032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev intersectionNondeg (i j : Fin (p + 1)) :
    (Δ[p] ⊗ Δ[1] : SSet.{u}).Subcomplex :=
  .ofSimplex (nonDegenerateEquiv i).val ⊓ .ofSimplex (nonDegenerateEquiv j).val

/-- Given `j : Fin (p + 2)`, this is the non-degenerate `p`-simplex of `Δ[p] ⊗ Δ[1]`
which correspond to the stricly monotone map `Fin (p + 1) → Fin (p + 1) × Fin 2`
whose first projection is the identity, and whose second projection takes `j`-times
the value `0`. -/
@[simps coe_fst coe_snd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e4d51f3416747817f8956870bd6092cb4690d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
