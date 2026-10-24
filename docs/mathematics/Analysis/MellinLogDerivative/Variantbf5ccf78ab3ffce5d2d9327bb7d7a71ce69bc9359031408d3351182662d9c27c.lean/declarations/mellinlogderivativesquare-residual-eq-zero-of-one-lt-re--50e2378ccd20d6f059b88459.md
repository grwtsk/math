# MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ad20deb7be8627218d474dbd128ee8fb404071a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d577b306-17a4-c881-133d-107d4b733054",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:438facaf-1c88-3bef-79b7-879de83b5a4d",
  "kind": "theorem",
  "lexical_name": "MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re",
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
  "slug": "mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--50e2378ccd20d6f059b88459",
  "source": {
    "blob": "5ad20deb7be8627218d474dbd128ee8fb404071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 135,
    "path": "GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50e2378ccd20d6f059b884594fc9734437f4570fcf724d0119bda989ca272799",
  "verification": {
    "reference": "docs/verification/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:438facaf-1c88-3bef-79b7-879de83b5a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : MellinLogDerivativeSquare χ) {s : ℂ} (hs : 1 < s.re) :
    square.residual s = 0 := by
  have hEq := square.regularizedLogDerivativeIdentity s hs
  have hne := square.regularizedL_ne_zero_of_one_lt_re s hs
  unfold MellinLogDerivativeSquare.residual
  rw [hEq, div_mul_cancel₀ _ hne]
  ring

/-- Identity-theorem continuation of the regularized logarithmic-derivative
ODE to the whole critical right half-plane. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ad20deb7be8627218d474dbd128ee8fb404071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
