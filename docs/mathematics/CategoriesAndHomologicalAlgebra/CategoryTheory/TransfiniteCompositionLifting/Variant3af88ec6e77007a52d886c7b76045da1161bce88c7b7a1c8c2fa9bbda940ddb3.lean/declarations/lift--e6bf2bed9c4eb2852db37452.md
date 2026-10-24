# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54bfc7327300125ef64bd6d3742958985c72e718f48ada169b6c1e863414a986",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--e6bf2bed9c4eb2852db37452",
  "source": {
    "blob": "ab3a793cdef7f4a08594380fd58878ced27a6e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6bf2bed9c4eb2852db3745257cad7612899ad7f10a7455fa8303513663b5eee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54bfc7327300125ef64bd6d3742958985c72e718f48ada169b6c1e863414a986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lift : (sqFunctor c p f g).obj (Opposite.op j) where
  f' := liftHom hj s
  w₁ := by
    have h : ⊥ < j := Ne.bot_lt' (by
      rintro rfl
      exact Order.not_isSuccLimit_bot hj)
    rw [liftHom_fac hj s ⊥ h]
    simpa using (s.1 ⟨⊥, h⟩).w₁
  w₂ := (F.isColimitOfIsWellOrderContinuous j hj).hom_ext (fun ⟨i, hij⟩ ↦ by
    have := (s.1 ⟨i, hij⟩).w₂
    dsimp at this ⊢
    rw [liftHom_fac_assoc _ _ _ hij, this, Cocone.w_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variant3af88ec6e77007a52d886c7b76045da1161bce88c7b7a1c8c2fa9bbda940ddb3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3a793cdef7f4a08594380fd58878ced27a6e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
