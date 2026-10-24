# continuous_indicatorConstLp_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5748d8b-0d17-73b5-9b5d-c68e51aa9d50",
  "kind": "theorem",
  "lexical_name": "continuous_indicatorConstLp_set",
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
  "slug": "continuous-indicatorconstlp-set--6a209f31541cb85d17ae2e7c",
  "source": {
    "blob": "c769333ba587fd95c632459efecb1e1d55d74e3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a209f31541cb85d17ae2e7c57a914b04c8d3dd40e399188b08ae7729a5c214a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5748d8b-0d17-73b5-9b5d-c68e51aa9d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_indicatorConstLp_set [Fact (1 ≤ p)] {X : Type*} [TopologicalSpace X]
    {s : X → Set α} {hs : ∀ x, MeasurableSet (s x)} {hμs : ∀ x, μ (s x) ≠ ∞} (hp : p ≠ ∞)
    (h : ∀ x, Tendsto (fun y ↦ μ (s y ∆ s x)) (𝓝 x) (𝓝 0)) :
    Continuous fun x ↦ indicatorConstLp p (hs x) (hμs x) c :=
  continuous_iff_continuousAt.2 fun x ↦ tendsto_indicatorConstLp_set hp (h x)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c769333ba587fd95c632459efecb1e1d55d74e3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
