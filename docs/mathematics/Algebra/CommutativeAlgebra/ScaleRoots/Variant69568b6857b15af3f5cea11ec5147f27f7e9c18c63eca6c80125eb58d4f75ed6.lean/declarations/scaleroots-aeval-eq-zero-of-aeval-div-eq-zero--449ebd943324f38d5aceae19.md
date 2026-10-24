# scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d84757b-5f64-9dd2-388a-64de0858fb35",
  "kind": "theorem",
  "lexical_name": "scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero",
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
  "slug": "scaleroots-aeval-eq-zero-of-aeval-div-eq-zero--449ebd943324f38d5aceae19",
  "source": {
    "blob": "6cf059d83b19f8c6570f3f5a41367af9a595bbc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 169,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:449ebd943324f38d5aceae1931d5b2bbbf84ac34c08bbacfcc0cd8240defb03c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d84757b-5f64-9dd2-388a-64de0858fb35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero [Algebra R K]
    (inj : Function.Injective (algebraMap R K)) {p : R[X]} {r s : R}
    (hr : aeval (algebraMap R K r / algebraMap R K s) p = 0) (hs : s ∈ nonZeroDivisors R) :
    aeval (algebraMap R K r) (scaleRoots p s) = 0 :=
  scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero inj hr hs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant69568b6857b15af3f5cea11ec5147f27f7e9c18c63eca6c80125eb58d4f75ed6.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf059d83b19f8c6570f3f5a41367af9a595bbc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
