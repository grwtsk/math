# mkOfAdjoinEqTop'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:618a48e017e5fdae270c787772982875137ff82336590a39ac2b5340461101d0",
  "kind": "def",
  "lexical_name": "mkOfAdjoinEqTop'",
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
  "slug": "mkofadjoineqtop--4c714d5c1310c3b874363a07",
  "source": {
    "blob": "1a48e2502d24d9469b08075dd030abe64a293090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 654,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c714d5c1310c3b874363a07cd85ddbe674652fb637e292403e51d3717bff836",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:618a48e017e5fdae270c787772982875137ff82336590a39ac2b5340461101d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOfAdjoinEqTop' [Module.Finite R S] [Module.Free R S] {α : S} (hα : Algebra.adjoin R {α} = ⊤) :
    IsAdjoinRootMonic S (minpoly R α) where
  __ : IsAdjoinRoot S (minpoly R α) :=
    have monic := minpoly.monic (Algebra.IsIntegral.isIntegral (R := R) α)
    haveI := monic.free_adjoinRoot
    haveI := monic.finite_adjoinRoot
    let φ := AdjoinRoot.liftAlgHom _ (Algebra.ofId R S) _ (minpoly.aeval R α)
    IsAdjoinRoot.ofAdjoinRootEquiv <| AlgEquiv.ofBijective φ <| by
      refine OrzechProperty.bijective_of_surjective_of_finrank_le φ.toLinearMap (fun s ↦ ?_) ?_
      · rw [Algebra.adjoin_singleton_eq_range_aeval, AlgHom.range_eq_top] at hα
        rcases hα s with ⟨p, hp⟩
        exact ⟨AdjoinRoot.mk (minpoly R α) p, by simp [φ, ← aeval_def, hp]⟩
      · nontriviality R
        exact finrank_quotient_span_eq_natDegree' monic ▸ minpoly.natDegree_le α
  map := aeval α
  monic := minpoly.monic (Algebra.IsIntegral.isIntegral α)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant6e65b2fdfd84db1d542c45612905603eed019e4a543cd85e9f0178628b23d654.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a48e2502d24d9469b08075dd030abe64a293090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
