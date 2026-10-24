# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa6af77875de2e929281b1a1417891d139fed014eb768bb834ab29d004a0deca",
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
  "slug": "instance--87e9fd65132fbf903f1de008",
  "source": {
    "blob": "3de8c5ded7ae89dcef962ec224ac824d38b166a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87e9fd65132fbf903f1de008544caefc194c71c1357598fbbd169c6621b9d403",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa6af77875de2e929281b1a1417891d139fed014eb768bb834ab29d004a0deca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsTopologicalDivisionRing (hat K) :=
  { Completion.topologicalRing with
    continuousAt_inv₀ := by
      intro x x_ne
      have : { y | hatInv y = y⁻¹ } ∈ 𝓝 x :=
        haveI : {(0 : hat K)}ᶜ ⊆ { y : hat K | hatInv y = y⁻¹ } := by
          intro y y_ne
          rw [mem_compl_singleton_iff] at y_ne
          dsimp [Inv.inv]
          rw [ite_eq_right y_ne]
        mem_of_superset (compl_singleton_mem_nhds x_ne) this
      exact ContinuousAt.congr (continuous_hatInv x_ne) this }

end Completion

end UniformSpace

variable (L : Type*) [Field L] [UniformSpace L] [CompletableTopField L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformField/Variant47c7bf51b201a11742dadfca6007609569a8c2bc7553f610d0a53c947ed96ee5.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de8c5ded7ae89dcef962ec224ac824d38b166a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
