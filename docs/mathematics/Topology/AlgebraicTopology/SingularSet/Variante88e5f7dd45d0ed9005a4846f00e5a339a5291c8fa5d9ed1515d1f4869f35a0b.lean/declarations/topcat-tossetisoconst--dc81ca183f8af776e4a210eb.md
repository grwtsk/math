# TopCat.toSSetIsoConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:963b58600181bed68debe03774d3394ba0d09261b360de54e862cb743d5d5419",
  "kind": "def",
  "lexical_name": "TopCat.toSSetIsoConst",
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
  "slug": "topcat-tossetisoconst--dc81ca183f8af776e4a210eb",
  "source": {
    "blob": "e99fb0892c5d39c212f5be2cd878b1a628fa1b1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc81ca183f8af776e4a210eb833a366b87b36b9bfc33a091205b5f313171cd74",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:963b58600181bed68debe03774d3394ba0d09261b360de54e862cb743d5d5419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TopCat.toSSetIsoConst (X : TopCat) [TotallyDisconnectedSpace X] :
    TopCat.toSSet.obj X ≅ (Functor.const _).obj X :=
  .symm <|
  NatIso.ofComponents (fun i ↦
    { inv v := v.1 ⟨Pi.single 0 1, show ∑ _, _ = _ by simp⟩
      hom x := TopCat.ofHom ⟨fun _ ↦ x, continuous_const⟩
      inv_hom_id := types_ext _ _ fun f ↦ TopCat.hom_ext (ContinuousMap.ext
        fun j ↦ TotallyDisconnectedSpace.eq_of_continuous (α := i.unop.toTopObj) _ f.1.2 _ _)
      hom_inv_id := rfl }) (by intros; ext; rfl)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e99fb0892c5d39c212f5be2cd878b1a628fa1b1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
