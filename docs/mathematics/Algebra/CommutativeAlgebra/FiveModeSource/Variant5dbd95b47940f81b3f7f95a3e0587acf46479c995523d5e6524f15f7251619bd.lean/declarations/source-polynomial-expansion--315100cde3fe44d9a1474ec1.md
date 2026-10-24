# source_polynomial_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ee576d-497f-e08d-148a-f040878cd3ed",
  "kind": "theorem",
  "lexical_name": "source_polynomial_expansion",
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
  "slug": "source-polynomial-expansion--315100cde3fe44d9a1474ec1",
  "source": {
    "blob": "056f680961640b0549aab23fea33cec93a4a15da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSource/Variant5dbd95b47940f81b3f7f95a3e0587acf46479c995523d5e6524f15f7251619bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:315100cde3fe44d9a1474ec167d3cbcd42b997bc8ce1250b6b26f92bd6e6f893",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSource/Variant5dbd95b47940f81b3f7f95a3e0587acf46479c995523d5e6524f15f7251619bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ee576d-497f-e08d-148a-f040878cd3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_polynomial_expansion (A y : ℝ) :
    unitSecond y / A ^ 2 - unitBump y / 4 =
      ∑ i : Fin 5, sourceCoefficient A i * mode i y := by
  rw [bump_expansion, second_expansion]
  simp only [sourceCoefficient, sub_mul, div_mul_eq_mul_div, Finset.sum_sub_distrib,
    Finset.sum_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSource/Variant5dbd95b47940f81b3f7f95a3e0587acf46479c995523d5e6524f15f7251619bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSource/Variant5dbd95b47940f81b3f7f95a3e0587acf46479c995523d5e6524f15f7251619bd.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056f680961640b0549aab23fea33cec93a4a15da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
