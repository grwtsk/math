# semilatticeSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbfb7ef965965d3eb8eac17a71d804fea75189e4662da03c02b39b861f47f0a7",
  "kind": "instance",
  "lexical_name": "semilatticeSup",
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
  "slug": "semilatticesup--9300bc4e5e6bc31d425617d9",
  "source": {
    "blob": "e647d7b2606cb9aae3af48b5539b4443ade26db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1560,
    "line": 1544,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9300bc4e5e6bc31d425617d97d93a16f4369adef83ce474aba476251b0e52697",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbfb7ef965965d3eb8eac17a71d804fea75189e4662da03c02b39b861f47f0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1544–1560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semilatticeSup : SemilatticeSup (α →ᵇ β) :=
  { BoundedContinuousFunction.partialOrder with
    sup := fun f g =>
      { toFun := fun t => f t ⊔ g t
        continuous_toFun := f.continuous.sup g.continuous
        map_bounded' := by
          obtain ⟨C₁, hf⟩ := f.bounded
          obtain ⟨C₂, hg⟩ := g.bounded
          refine' ⟨C₁ + C₂, fun x y => _⟩
          simp_rw [NormedAddCommGroup.dist_eq] at hf hg ⊢
          exact (norm_sup_sub_sup_le_add_norm _ _ _ _).trans (add_le_add (hf _ _) (hg _ _)) }
    le_sup_left := fun f g => ContinuousMap.le_def.mpr fun _ => le_sup_left
    le_sup_right := fun f g => ContinuousMap.le_def.mpr fun _ => le_sup_right
    sup_le := fun f g₁ g₂ w₁ w₂ =>
      ContinuousMap.le_def.mpr fun _ =>
        sup_le (ContinuousMap.le_def.mp w₁ _) (ContinuousMap.le_def.mp w₂ _) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean#L1544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e647d7b2606cb9aae3af48b5539b4443ade26db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
