# descFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f015860251ae30050b0f7487ba02e5930c6b8e8eed7a4107ad496fb89e9e04a4",
  "kind": "def",
  "lexical_name": "descFun",
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
  "slug": "descfun--23e5f5237afaaf5ebc228d2b",
  "source": {
    "blob": "31092bcece65090d2a8e1b39694c69ba382d1402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23e5f5237afaaf5ebc228d2bdd20a276e3a790c4faefa4c54f4e5501720b4c4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f015860251ae30050b0f7487ba02e5930c6b8e8eed7a4107ad496fb89e9e04a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descFun (s : Cocone F) : ColimitType F → s.pt := by
  fapply Quot.lift
  · exact descFunLift F s
  · intro x y r
    induction r with
    | refl => rfl
    | symm x y _ ih => exact ih.symm
    | trans x y z _ _ ih1 ih2 => exact ih1.trans ih2
    | map j j' f x => exact RingHom.congr_fun (congrArg Hom.hom <| s.ι.naturality f) x
    | zero j => simp +instances
    | one j => simp +instances
    | neg j x => simp +instances
    | add j x y => simp +instances
    | mul j x y => simp +instances
    | neg_1 x x' r ih => dsimp; rw [ih]
    | add_1 x x' y r ih => dsimp; rw [ih]
    | add_2 x y y' r ih => dsimp; rw [ih]
    | mul_1 x x' y r ih => dsimp; rw [ih]
    | mul_2 x y y' r ih => dsimp; rw [ih]
    | zero_add x => dsimp; rw [zero_add]
    | add_zero x => dsimp; rw [add_zero]
    | one_mul x => dsimp; rw [one_mul]
    | mul_one x => dsimp; rw [mul_one]
    | neg_add_cancel x => dsimp; rw [neg_add_cancel]
    | add_comm x y => dsimp; rw [add_comm]
    | add_assoc x y z => dsimp; rw [add_assoc]
    | mul_assoc x y z => dsimp; rw [mul_assoc]
    | left_distrib x y z => dsimp; rw [mul_add]
    | right_distrib x y z => dsimp; rw [add_mul]
    | zero_mul x => dsimp; rw [zero_mul]
    | mul_zero x => dsimp; rw [mul_zero]

/-- The ring homomorphism from the colimit ring to the cone point of any other
cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant6d48e73ec844cbe1d8c3a23f03d679fffc09b5ff88f20df1e0faa0862d27fed0.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31092bcece65090d2a8e1b39694c69ba382d1402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
