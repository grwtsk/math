# induced_topology_le_preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31eb2364-2d7f-af7d-53cb-8fe6b213a519",
  "kind": "theorem",
  "lexical_name": "induced_topology_le_preorder",
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
  "slug": "induced-topology-le-preorder--1b831f2f68b3e06fc922bbf7",
  "source": {
    "blob": "7efd25fe736c11d967d9c8c43876cdde33cbfb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 1004,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b831f2f68b3e06fc922bbf75f1f493982146a42caaef54153f58ca46bae07b4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31eb2364-2d7f-af7d-53cb-8fe6b213a519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1004–1013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induced_topology_le_preorder [Preorder α] [Preorder β] [TopologicalSpace β]
    [OrderTopology β] {f : α → β} (hf : ∀ {x y}, f x < f y ↔ x < y) :
    induced f ‹TopologicalSpace β› ≤ Preorder.topology α := by
  let _ := Preorder.topology α; have : OrderTopology α := ⟨rfl⟩
  refine le_of_nhds_le_nhds fun x => ?_
  simp only [nhds_eq_order, nhds_induced, comap_inf, comap_iInf, comap_principal, Ioi, Iio, ← hf]
  refine inf_le_inf (le_iInf₂ fun a ha => ?_) (le_iInf₂ fun a ha => ?_)
  exacts [iInf₂_le (f a) ha, iInf₂_le (f a) ha]

-- porting note: new lemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant079aa9df6c9d24ffee4f7b7247a1e6bad40765b7809b65aba368302a17241de3.lean#L1004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efd25fe736c11d967d9c8c43876cdde33cbfb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
