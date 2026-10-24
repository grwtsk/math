# LinearOrderedSemiring.toLocallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee67d020abcaa855e71202eb620255cdbb5b8dfd09e37808c5e9d29da9b4e44a",
  "kind": "instance",
  "lexical_name": "LinearOrderedSemiring.toLocallyConvexSpace",
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
  "slug": "linearorderedsemiring-tolocallyconvexspace--4db219e421016e3a332815f9",
  "source": {
    "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 225,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4db219e421016e3a332815f952045bbc54ef9964657e63b2dccbe6e16285d52d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee67d020abcaa855e71202eb620255cdbb5b8dfd09e37808c5e9d29da9b4e44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LinearOrderedSemiring.toLocallyConvexSpace {R : Type*} [TopologicalSpace R]
    [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] [OrderTopology R] :
    LocallyConvexSpace R R where
  convex_basis x := by
    obtain hl | hl := isBot_or_exists_lt x
    · refine hl.rec ?_ _
      intro
      refine nhds_bot_basis.to_hasBasis' ?_ ?_
      · intros
        refine ⟨Set.Iio _, ?_, .rfl⟩
        simp_all [Iio_mem_nhds, convex_Iio]
      · simp +contextual
    obtain hu | hu := isTop_or_exists_gt x
    · refine hu.rec ?_ _
      intro
      refine nhds_top_basis.to_hasBasis' ?_ ?_
      · intros
        refine ⟨Set.Ioi _, ?_, subset_refl _⟩
        simp_all [Ioi_mem_nhds, convex_Ioi]
      · simp +contextual
    refine (nhds_basis_Ioo' hl hu).to_hasBasis' ?_ ?_
    · simp only [id_eq, and_imp, Prod.forall]
      intros
      refine ⟨_, ?_, subset_refl _⟩
      simp_all [Ioo_mem_nhds, convex_Ioo]
    · simp +contextual

end LinearOrderedSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4ca0adf7dcfdd8baed1c0decdce193a11d196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
