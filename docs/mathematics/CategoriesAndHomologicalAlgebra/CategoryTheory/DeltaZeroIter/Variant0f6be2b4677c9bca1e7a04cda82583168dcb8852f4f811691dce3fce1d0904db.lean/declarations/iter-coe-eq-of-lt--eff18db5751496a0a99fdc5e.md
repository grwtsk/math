# σ₀Iter_coe_eq_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6778675-0965-ebee-d53d-6e049c2eaf33",
  "kind": "lemma",
  "lexical_name": "σ₀Iter_coe_eq_of_lt",
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
  "slug": "iter-coe-eq-of-lt--eff18db5751496a0a99fdc5e",
  "source": {
    "blob": "a3f101a75ae89bcb73402c06c2ea5bcacfcead07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eff18db5751496a0a99fdc5ee08c304dd3bfc9495f08d71196437d2e4622da10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6778675-0965-ebee-d53d-6e049c2eaf33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma σ₀Iter_coe_eq_of_lt (i : ℕ) {n m : ℕ}
    (j : Fin (m + 1)) (hi : n + i = m := by lia) (hj : j.val < i := by grind) :
    dsimp% (σ₀Iter i hi j).val = 0 := by
  simp [σ₀Iter, Hom.mk, ConcreteCategory.hom, Hom.toOrderHom, ite_eq_left hj]

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeltaZeroIter/Variant0f6be2b4677c9bca1e7a04cda82583168dcb8852f4f811691dce3fce1d0904db.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f101a75ae89bcb73402c06c2ea5bcacfcead07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
