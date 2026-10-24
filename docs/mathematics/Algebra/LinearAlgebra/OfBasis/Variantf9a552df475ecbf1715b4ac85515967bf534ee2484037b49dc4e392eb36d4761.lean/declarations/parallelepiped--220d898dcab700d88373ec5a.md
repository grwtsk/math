# parallelepiped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e54ee0daa09ca4f46acf6a30bf618b95bff9163b56a590109b61635d187a88d",
  "kind": "def",
  "lexical_name": "parallelepiped",
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
  "slug": "parallelepiped--220d898dcab700d88373ec5a",
  "source": {
    "blob": "3b37fa5afdb3882f15353ad3d2a7f7fff4fa63e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:220d898dcab700d88373ec5a9c89cd2d7e80a3db44d2d07114cf32e21ba0f56c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e54ee0daa09ca4f46acf6a30bf618b95bff9163b56a590109b61635d187a88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parallelepiped (b : Basis ι ℝ E) : PositiveCompacts E where
  carrier := _root_.parallelepiped b
  isCompact' := IsCompact.image isCompact_Icc
      (continuous_finsetSum Finset.univ
        fun (i : ι) (_H : i ∈ Finset.univ) ↦ by fun_prop)
  interior_nonempty' := by
    suffices H : Set.Nonempty (interior (b.equivFunL.symm.toHomeomorph '' Icc 0 1)) by
      dsimp only [_root_.parallelepiped]
      convert! H
      exact (b.equivFun_symm_apply _).symm
    have A : Set.Nonempty (interior (Icc (0 : ι → ℝ) 1)) := by
      rw [← pi_univ_Icc, interior_pi_set (@finite_univ ι _)]
      simp only [univ_pi_nonempty_iff, Pi.zero_apply, Pi.one_apply, interior_Icc, nonempty_Ioo,
        zero_lt_one, imp_true_iff]
    rwa [← Homeomorph.image_interior, image_nonempty]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b37fa5afdb3882f15353ad3d2a7f7fff4fa63e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
