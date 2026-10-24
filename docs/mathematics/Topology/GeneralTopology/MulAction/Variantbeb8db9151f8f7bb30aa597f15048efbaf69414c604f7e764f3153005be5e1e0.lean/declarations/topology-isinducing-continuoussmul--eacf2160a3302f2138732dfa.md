# Topology.IsInducing.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d85064-fc4f-eab7-7c37-4b9727c7b07b",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.continuousSMul",
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
  "slug": "topology-isinducing-continuoussmul--eacf2160a3302f2138732dfa",
  "source": {
    "blob": "8cf1ed6b72db6be8f05f62c54f90c09341ac583e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eacf2160a3302f2138732dfa86f994a50e5034f1d30aaaa1c75dad8ca04b1e43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d85064-fc4f-eab7-7c37-4b9727c7b07b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsInducing.continuousSMul {N : Type*} [SMul N Y] [TopologicalSpace N] {f : N → M}
    (hg : IsInducing g) (hf : Continuous f) (hsmul : ∀ {c x}, g (c • x) = f c • g x) :
    ContinuousSMul N Y where
  continuous_smul := by
    simpa only [hg.continuous_iff, Function.comp_def, hsmul]
      using (hf.comp continuous_fst).fun_smul <| hg.continuous.comp continuous_snd

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1ed6b72db6be8f05f62c54f90c09341ac583e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
