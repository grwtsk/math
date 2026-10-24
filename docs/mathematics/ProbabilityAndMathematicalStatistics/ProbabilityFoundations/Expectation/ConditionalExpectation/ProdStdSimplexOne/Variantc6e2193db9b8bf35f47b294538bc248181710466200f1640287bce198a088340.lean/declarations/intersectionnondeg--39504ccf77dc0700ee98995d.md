# intersectionNondeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a917b8b03b3ce2c6e3110a1dcee37cfa3b6fc8990ae121f4e5d7137974ec926",
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
  "slug": "intersectionnondeg--39504ccf77dc0700ee98995d",
  "source": {
    "blob": "112eeb9fd32c1f82cf7018a463d63751f9f23578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39504ccf77dc0700ee98995d5d6b48ab81d85d749df2d396300b75f8473c44d6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a917b8b03b3ce2c6e3110a1dcee37cfa3b6fc8990ae121f4e5d7137974ec926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112eeb9fd32c1f82cf7018a463d63751f9f23578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
