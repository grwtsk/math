# equivAwayQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0159e07a2f8d8c08ebdaac284cd61c3dfedcc7271fc2d8af51831fcb475980c",
  "kind": "def",
  "lexical_name": "equivAwayQuotient",
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
  "slug": "equivawayquotient--a2b95a4ce31852a1043e9489",
  "source": {
    "blob": "7d328ace851c177e8d9c708a2ecd5dec303d88d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 214,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b95a4ce31852a1043e9489e2043328b3a81f6fc21208c74e25f0d3fe0dc21a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0159e07a2f8d8c08ebdaac284cd61c3dfedcc7271fc2d8af51831fcb475980c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivAwayQuotient :
    P.Ring ≃ₐ[R] Localization.Away P.g ⧸ Ideal.span {algebraMap _ (Localization.Away P.g) P.f} := by
  refine .ofAlgHom (P.lift (algebraMap R[X] _ .X) ⟨?_, ?_⟩)
    (Ideal.Quotient.liftₐ _ (IsLocalization.Away.liftAlgHom (P.g) P.hasMap_X.2) ?_) ?_ ?_
  · rw [aeval_algebraMap_apply, IsScalarTower.algebraMap_apply _ (Localization.Away P.g) (_ ⧸ _),
      Ideal.Quotient.algebraMap_eq, aeval_X_left_apply, Ideal.Quotient.mk_singleton_self]
  · rw [aeval_algebraMap_apply, IsScalarTower.algebraMap_apply _ (Localization.Away P.g) (_ ⧸ _),
      aeval_X_left_apply]
    exact (IsLocalization.Away.algebraMap_isUnit ..).map _
  · change Ideal.span _ ≤ RingHom.ker _
    simpa [Ideal.span_le] using P.hasMap_X.1
  · apply Ideal.Quotient.algHom_ext
    ext
    simp [Algebra.algHom, IsScalarTower.algebraMap_apply R[X] (Localization.Away P.g) (_ ⧸ _),
      -Ideal.Quotient.mk_algebraMap]
  · ext; simp [IsScalarTower.algebraMap_apply R[X] (Localization.Away P.g) (_ ⧸ _),
      -Ideal.Quotient.mk_algebraMap]

/-- `R[X][Y]/⟨f, Yg-1⟩ ≃ R[X, Y]/⟨f, Yg-1⟩` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d328ace851c177e8d9c708a2ecd5dec303d88d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
