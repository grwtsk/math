# coevaluation_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:464bc618-8a41-138d-8a2f-d8e5528488bc",
  "kind": "theorem",
  "lexical_name": "coevaluation_evaluation",
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
  "slug": "coevaluation-evaluation--522a230b1f9b5c94ab75b8f4",
  "source": {
    "blob": "86fe840267129d24beb1635d2dc4b3f5660502cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522a230b1f9b5c94ab75b8f4cfa43af05fdc5e8c36008a744e094961cec6f74c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464bc618-8a41-138d-8a2f-d8e5528488bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coevaluation_evaluation :
    letI V' : FGModuleCat K := FGModuleCatDual K V
    (𝟙 V' ⊗ FGModuleCatCoevaluation K V) ≫ (α_ V' V V').inv ≫ (FGModuleCatEvaluation K V ⊗ 𝟙 V') =
      (ρ_ V').hom ≫ (λ_ V').inv := by
  apply contractLeft_assoc_coevaluation K V

-- Porting note: extremely slow, was fast in mathlib3.
set_option maxHeartbeats 1600000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86fe840267129d24beb1635d2dc4b3f5660502cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
