# adjugate_mul_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ee2bdbd-b654-d04c-2111-9fda99128fc5",
  "kind": "theorem",
  "lexical_name": "adjugate_mul_distrib",
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
  "slug": "adjugate-mul-distrib--58743cc8754043a6813800ea",
  "source": {
    "blob": "ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 489,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58743cc8754043a6813800eab06ca0b4fb55215093a4fd6156120f5904aa994f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ee2bdbd-b654-d04c-2111-9fda99128fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjugate_mul_distrib (A B : Matrix n n α) : adjugate (A * B) = adjugate B * adjugate A := by
  let g : Matrix n n α → Matrix n n α[X] := fun M =>
    M.map Polynomial.C + (Polynomial.X : α[X]) • (1 : Matrix n n α[X])
  let f' : Matrix n n α[X] →+* Matrix n n α := (Polynomial.evalRingHom 0).mapMatrix
  have f'_inv : ∀ M, f' (g M) = M := by
    intro
    ext
    simp
  have f'_adj : ∀ M : Matrix n n α, f' (adjugate (g M)) = adjugate M := by
    intro
    rw [RingHom.map_adjugate, f'_inv]
  have f'_g_mul : ∀ M N : Matrix n n α, f' (g M * g N) = M * N := by
    intros M N
    rw [RingHom.map_mul, f'_inv, f'_inv]
  have hu : ∀ M : Matrix n n α, IsRegular (g M).det := by
    intro M
    refine' Polynomial.Monic.isRegular _
    simp only [Polynomial.Monic.def, ← Polynomial.leadingCoeff_det_X_one_add_C M, add_comm]
  rw [← f'_adj, ← f'_adj, ← f'_adj, ← f'.map_mul, ←
    adjugate_mul_distrib_aux _ _ (hu A).left (hu B).left, RingHom.map_adjugate,
    RingHom.map_adjugate, f'_inv, f'_g_mul]
#align matrix.adjugate_mul_distrib Matrix.adjugate_mul_distrib

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
