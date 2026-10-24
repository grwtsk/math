# _root_.GRWTSK.Topology.GeneralTopology.IsBoundedToStrongDualPreimageIffIsBounded.Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.WeakBilin.continuous_of_continuous_eval_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc2ae683-f23a-5af5-6758-2ad82715c1f0",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsBoundedToStrongDualPreimageIffIsBounded.Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.WeakBilin.continuous_of_continuous_eval_re",
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
  "slug": "root-grwtsk-topology-generaltopology-isboundedtostrongdualpreimageiffisb--b9cadbeba01a1a90984f2b5c",
  "source": {
    "blob": "f9ec0f82265b578948182d0f3c97e192fd484d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 397,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9cadbeba01a1a90984f2b5cff7c0a54e52854d3c2e8e2199de425f21a1734ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc2ae683-f23a-5af5-6758-2ad82715c1f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsBoundedToStrongDualPreimageIffIsBounded.Variantf6a309042d8de9f540def9c4d1b5d17351e465ec7804db9f9234cf78d11acfd4.WeakBilin.continuous_of_continuous_eval_re (B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜)
    {g : α → WeakBilin B} (h : ∀ y, Continuous fun a ↦ re (B (g a) y)) :
    Continuous g := by
  refine WeakBilin.continuous_of_continuous_eval _ fun x ↦ ?_
  suffices Continuous fun a ↦ (re (B (g a) x) : 𝕜) - re (B (g a) ((I : 𝕜) • x)) * I by simpa
  fun_prop

variable [TopologicalSpace F]

/-- A map into `WeakDual 𝕜 F` over `𝕜` (with `RCLike 𝕜`) is continuous if the real parts of all
the evaluation maps `a ↦ g a y` are continuous for each `y : F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ec0f82265b578948182d0f3c97e192fd484d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
