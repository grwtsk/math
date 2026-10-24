# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc772dfe2d93eb4d3cd8766726daa624b21d5b69e0b3e9ce1351a59ba0ae0503",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cf9c8969dfc82fc33748e49c",
  "source": {
    "blob": "3798230fe242e60caa151b551e94ef358e22af29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf9c8969dfc82fc33748e49cce529ce9933e28c8d12899e8b3e6f50ffef102b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc772dfe2d93eb4d3cd8766726daa624b21d5b69e0b3e9ce1351a59ba0ae0503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DiscreteTopology M] : IsLinearTopology R M :=
  have : HasBasis (𝓝 0 : Filter M) (fun _ ↦ True) (fun (_ : Unit) ↦ (⊥ : Submodule R M)) := by
    rw [nhds_discrete]
    exact hasBasis_pure _
  mk_of_hasBasis R this

variable (R R') in
open Set Pointwise in
/-- Assume that `M` is a module over two rings `R` and `R'`, and that its topology
is linear with respect to each of these rings. Then, it has a basis of neighborhoods of zero
made of sub-`(R, R')`-bimodules.

The proof is inspired by lemma 9 in [I. Kaplansky, *Topological Rings*](kaplansky_topological_1947).
TODO: Formalize the lemma in its full strength.

Note: due to the lack of a satisfying theory of sub-bimodules, we use `AddSubgroup`s with
extra conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3798230fe242e60caa151b551e94ef358e22af29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
