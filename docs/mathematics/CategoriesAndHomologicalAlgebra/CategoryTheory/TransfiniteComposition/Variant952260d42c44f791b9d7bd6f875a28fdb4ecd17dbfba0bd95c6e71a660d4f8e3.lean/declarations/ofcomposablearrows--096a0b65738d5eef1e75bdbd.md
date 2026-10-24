# ofComposableArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebdf68b14d7636143098758266dc0fc203c8113a41b384f1532133a605a3a613",
  "kind": "def",
  "lexical_name": "ofComposableArrows",
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
  "slug": "ofcomposablearrows--096a0b65738d5eef1e75bdbd",
  "source": {
    "blob": "e667f6a9ccf20ca17cfdd4db755932eaaf705a1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant952260d42c44f791b9d7bd6f875a28fdb4ecd17dbfba0bd95c6e71a660d4f8e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:096a0b65738d5eef1e75bdbd86ea13d91cf1925ab27b4ddfb08162bfadd5e5da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant952260d42c44f791b9d7bd6f875a28fdb4ecd17dbfba0bd95c6e71a660d4f8e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebdf68b14d7636143098758266dc0fc203c8113a41b384f1532133a605a3a613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofComposableArrows {n : ℕ} (F : ComposableArrows C n)
    (hF : ∀ (i : Fin n), W (F.map (homOfLE i.castSucc_le_succ))) :
    W.TransfiniteCompositionOfShape (Fin (n + 1)) F.hom where
  toTransfiniteCompositionOfShape := .ofComposableArrows F
  map_mem j hj := by
    obtain ⟨j, rfl⟩ | rfl := j.eq_castSucc_or_eq_last
    · replace hF := hF j
      rw [← W.arrow_mk_mem_toSet_iff] at hF ⊢
      have eq : Arrow.mk (homOfLE (Order.le_succ j.castSucc)) =
        Arrow.mk (homOfLE j.castSucc_le_succ) :=
          Arrow.ext rfl j.orderSucc_castSucc rfl
      replace eq := congr_arg F.mapArrow.obj eq
      convert! hF using 1
    · rw [isMax_iff_eq_top] at hj
      exact (hj rfl).elim

/-- The identity of any object is a transfinite composition of shape `Fin 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant952260d42c44f791b9d7bd6f875a28fdb4ecd17dbfba0bd95c6e71a660d4f8e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant952260d42c44f791b9d7bd6f875a28fdb4ecd17dbfba0bd95c6e71a660d4f8e3.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e667f6a9ccf20ca17cfdd4db755932eaaf705a1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
